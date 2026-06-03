if (SERVER) then
	AddCSLuaFile("shared.lua")
end

if( CLIENT ) then
	SWEP.BounceWeaponIcon = false
	SWEP.WepSelectIcon	= surface.GetTextureID("vgui/weapons/weapon_mse_katana")
	killicon.Add("weapon_mse_katana","vgui/weapons/weapon_mse_katana",Color(255,255,255,255))
end

SWEP.PrintName = "Katana"
SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true

SWEP.Author			= "metasync, Baddog"
SWEP.Instructions	= "Keep away from face, apply blade to subject."
SWEP.Contact		= "N/A"
SWEP.Purpose		= "End life, chop bamboo, seppuku."
SWEP.Category		= "Metasync Enterprises, Ltd."

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType 		= "melee2"
SWEP.ViewModel      = "models/weapons/c_katana.mdl"
SWEP.WorldModel   	= "models/weapons/w_katana.mdl"
SWEP.UseHands = true

SWEP.Primary.Sound				= Sound("")
SWEP.Primary.Delay				= 0.4
SWEP.Primary.Recoil				= 0
SWEP.Primary.Damage				= 0
SWEP.Primary.NumShots			= 1
SWEP.Primary.Cone				= 0
SWEP.Primary.ClipSize			= -1
SWEP.Primary.DefaultClip		= -1
SWEP.Primary.Automatic   		= false
SWEP.Primary.Ammo         		= "none"

SWEP.Secondary.Ammo         	= "none"
SWEP.SwingSound = Sound("weapons/katana/katana_swing_miss1.wav")

function SWEP:Initialize()
	if (SERVER) then
		self:SetHoldType( self.HoldType )
	end
	
	SWoodHit = {
		Sound( "weapons/katana/katana_wood_hit_1.wav" ),
		Sound( "weapons/katana/katana_wood_hit_2.wav" ),
		Sound( "weapons/katana/katana_wood_hit_3.wav" )
	}
	
	SFleshHit = {
		Sound( "ambient/machines/slicer1.wav" ),
		Sound( "ambient/machines/slicer2.wav" ),
		Sound( "ambient/machines/slicer3.wav" ),
		Sound( "ambient/machines/slicer4.wav" )
	} 
	
	SGlassHit = {
		Sound( "weapons/katana/katana_glass_hit_1.wav" ),
		Sound( "weapons/katana/katana_glass_hit_2.wav" ),
		Sound( "weapons/katana/katana_glass_hit_3.wav" )
	}
	
	SMetalHit = {
		Sound( "weapons/katana/katana_metal_hit_1.wav" ),
		Sound( "weapons/katana/katana_metal_hit_2.wav" ),
		Sound( "weapons/katana/katana_metal_hit_3.wav" ),
		Sound( "weapons/katana/katana_metal_hit_4.wav" ),
		Sound( "weapons/katana/katana_metal_hit_5.wav" ),
		Sound( "weapons/katana/katana_metal_hit_6.wav" ),
		Sound( "weapons/katana/katana_metal_hit_7.wav" )
	}
	
	SGroundHit = {
		Sound( "weapons/katana/katana_ground_hit_1.wav" ),
		Sound( "weapons/katana/katana_ground_hit_2.wav" ),
		Sound( "weapons/katana/katana_ground_hit_3.wav" ),
		Sound( "weapons/katana/katana_ground_hit_4.wav" ),
		Sound( "weapons/katana/katana_ground_hit_5.wav" )
	}
	
	self.FleshHit = {
		Sound( "weapons/katana/melee_katana_01.wav" ),
		Sound( "weapons/katana/melee_katana_02.wav" ),
		Sound( "weapons/katana/melee_katana_03.wav" )
	}	
end

function SWEP:Precache()
end

function SWEP:Deploy()
	self:SendWeaponAnim(ACT_VM_DRAW)
	self:SetNextPrimaryFire(CurTime() + 0.7)
	self:EmitSound("weapons/katana/katana_draw.wav")
	return true
end

local tSounds = {
	[MAT_VENT] = SMetalHit,
	[MAT_METAL] = SMetalHit,
	[MAT_COMPUTER] = SMetalHit,
	[MAT_WOOD] = SWoodHit,
	[MAT_FOLIAGE] = SWoodHit,
	[MAT_GLASS] = SGlassHit,
	[MAT_DIRT] = SGroundHit,
	[MAT_SLOSH] = SGroundHit,
	[MAT_TILE] = SGroundHit,
	[MAT_PLASTIC] = SGroundHit,
	[MAT_CONCRETE] = SGroundHit
}

function SWEP:PrimaryAttack()
	local eOwner = self:GetOwner()
	if (!IsValid(eOwner)) then return end

	self:SendWeaponAnim(ACT_VM_MISSCENTER)
	self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self:EmitSound("Weapon_Knife.Slash")
	eOwner:SetAnimation(PLAYER_ATTACK1)
	
	local trace = eOwner:GetEyeTrace()
	if trace.HitPos:Distance(eOwner:GetShootPos()) <= 70 then		
		bullet = {}
		bullet.Num = 1
		bullet.Src = eOwner:GetShootPos()
		bullet.Dir = eOwner:GetAimVector()
		bullet.Spread = Vector(0, 0, 0)
		bullet.Tracer = 0
		bullet.Force = 0
		bullet.Damage = 0
		
		eOwner:FireBullets(bullet)
		self:EmitSound("Weapon_Knife.Slash")
		
		if(trace.Entity:IsPlayer() or trace.Entity:IsNPC() or trace.Entity:GetClass() == "prop_ragdoll") then
			self:EmitSound(SFleshHit[math.random(1,#SFleshHit)])
		else
			util.Decal("ManhackCut", trace.HitPos + trace.HitNormal, trace.HitPos - trace.HitNormal)
			self:EmitSound(tSounds[trace.MatType] and tSounds[trace.MatType][math.random(1, #tSounds[trace.MatType])] or SGroundHit[math.random(1, #SGroundHit)])
		end
	end
end

function SWEP:SecondaryAttack()
	return
end

-- Animations.
local ActIndex = {}
	ActIndex["pistol"] 			= ACT_HL2MP_IDLE_PISTOL
	ActIndex["smg"] 			= ACT_HL2MP_IDLE_SMG1
	ActIndex["grenade"] 		= ACT_HL2MP_IDLE_GRENADE
	ActIndex["ar2"] 			= ACT_HL2MP_IDLE_AR2
	ActIndex["shotgun"] 		= ACT_HL2MP_IDLE_SHOTGUN
	ActIndex["rpg"]	 			= ACT_HL2MP_IDLE_RPG
	ActIndex["physgun"] 		= ACT_HL2MP_IDLE_PHYSGUN
	ActIndex["crossbow"] 		= ACT_HL2MP_IDLE_CROSSBOW
	ActIndex["melee"] 			= ACT_HL2MP_IDLE_MELEE
	ActIndex["slam"] 			= ACT_HL2MP_IDLE_SLAM
	ActIndex["normal"]			= ACT_HL2MP_IDLE
	ActIndex["knife"]			= ACT_HL2MP_IDLE_KNIFE
	ActIndex["melee2"]			= ACT_HL2MP_IDLE_MELEE2
	ActIndex["passive"]			= ACT_HL2MP_IDLE_PASSIVE
	ActIndex["fist"]			= ACT_HL2MP_IDLE_FIST

function SWEP:SetHoldType(t)
	local index = ActIndex[t]
	if (index == nil) then return end

	self.ActivityTranslate = {}
	self.ActivityTranslate [ ACT_MP_STAND_IDLE ]				= index
	self.ActivityTranslate [ ACT_MP_WALK ]						= index+1
	self.ActivityTranslate [ ACT_MP_RUN ]						= index+2        
	self.ActivityTranslate [ ACT_MP_CROUCH_IDLE ]				= index+3
	self.ActivityTranslate [ ACT_MP_CROUCHWALK ]				= index+4
	self.ActivityTranslate [ ACT_MP_ATTACK_STAND_PRIMARYFIRE ]	= index+5
	self.ActivityTranslate [ ACT_MP_ATTACK_CROUCH_PRIMARYFIRE ]	= index+5
	self.ActivityTranslate [ ACT_MP_RELOAD_STAND ]				= index+6
	self.ActivityTranslate [ ACT_MP_RELOAD_CROUCH ]				= index+6
	self.ActivityTranslate [ ACT_MP_JUMP ]						= index+7
	self.ActivityTranslate [ ACT_RANGE_ATTACK1 ]				= index+8
	if (t == "normal") then
		self.ActivityTranslate[ ACT_MP_JUMP ] = ACT_HL2MP_JUMP_SLAM
	elseif (t == "passive") then
		self.ActivityTranslate[ ACT_MP_CROUCH_IDLE ] = ACT_HL2MP_CROUCH_IDLE
	end	
	self:SetupWeaponHoldTypeForAI(t)
end

function SWEP:TranslateActivity(act)
	if (!IsValid(self:GetOwner())) then return end

	if (self:GetOwner():IsNPC()) then
		if (self.ActivityTranslateAI[act]) then
			return self.ActivityTranslateAI[act]
		end
		return -1
	end

	if (self.ActivityTranslate[act] != nil) then
		return self.ActivityTranslate[act]
	end
	
	return -1
end