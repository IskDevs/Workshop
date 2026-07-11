/*---------------------------------
FORTNITE CLEAN CUT 2019
---------------------------------*/
AddCSLuaFile( "fortnite_pickaxe_cleancut.lua" )

SWEP.PrintName = "Clean Cut"
    
SWEP.Author = "[BoZ]Niko663"
SWEP.Contact = "BattleBus@fortnite.com"
SWEP.Purpose = "For Battle Royale"
SWEP.Instructions = "Primary to swing."

SWEP.Category = "Fortnite: Battle Royale"

SWEP.Spawnable= false
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModelFOV = 65
SWEP.ViewModel = "models/fortnite/v_fbr_cleancut.mdl" 
SWEP.WorldModel = "models/fortnite/w_fbr_cleancut.mdl"
SWEP.ViewModelFlip = false

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 0
SWEP.SlotPos = 0
 
SWEP.UseHands = false

SWEP.HoldType = "melee2"

SWEP.FiresUnderwater = false

SWEP.DrawCrosshair = true

SWEP.DrawAmmo = true

SWEP.Base = "weapon_base"

SWEP.Primary.ClipSize = 0
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Ammo = NULL
SWEP.Primary.Automatic = true

SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = NULL
if (CLIENT) then
SWEP.WepSelectIcon = surface.GetTextureID( "vgui/entities/fortnite_pickaxe_cleancut" )
killicon.Add( "fortnite_pickaxe_cleancut", "VGUI/hud/fortnite_pickaxe_cleancut", color_white )
end


function SWEP:Initialize()
        self:SetHoldType( self.HoldType )
	self:SetNW2Bool( "FirstDraw", true )
end

function SWEP:Deploy()
	if (IsValid(self.Owner:GetViewModel())) then
	self.Owner:GetViewModel():SetWeaponModel( self.ViewModel, self )
	end
	self:SendWeaponAnim( ACT_VM_DRAW )
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() )
	self:EmitSound("Fortnite_CleanCut.Draw")
	self:SetNW2Bool( "FirstDraw", false )
	return true
end

function SWEP:CanBePickedUpByNPCs()
if GetGlobalBool( "FortniteSWEPSMounted" ) == true then
return true
else
return false
end
end

function SWEP:PrimaryAttack()

if IsValid(self.Owner) and self.Owner:IsNPC() then return end

self:ShootEffects()
self:SetNextPrimaryFire(CurTime() + 0.63)
self.Owner:SetRunSpeed( baseclass.Get( player_manager.GetPlayerClass(self.Owner) ).WalkSpeed )
timer.Create( "backtospeed" .. self:EntIndex(), 0.65, 1, function() self.Owner:SetRunSpeed( baseclass.Get( player_manager.GetPlayerClass(self.Owner) ).RunSpeed ) end ) 
self:EmitSound("Fortnite_CleanCut.Swing_" .. math.random(1, 2) .. "")
self:MeleePickaxe()
end

function SWEP:MeleePickaxe()

if IsFirstTimePredicted() then

	local aim = self.Owner:GetAimVector()
	local side = aim:Cross(Vector(0,0,1))
	local up = side:Cross(aim)
	local pos = self.Owner:GetShootPos() + side * 0 + up * 0

	if SERVER then
	local rocket = ents.Create("melee_attack_fortnite_pickaxe")
	if !IsValid(rocket) then return end
	rocket:SetAngles(self.Owner:GetAimVector():Angle(90,90,0))
	rocket:SetPos(pos)
	rocket:SetOwner(self.Owner)
	rocket:Spawn()
	rocket.Owner = self.Owner
	rocket.PickaxeType = "CleanCut"
	rocket:Activate()
		local phys = rocket:GetPhysicsObject()
			phys:SetVelocity(self.Owner:GetAimVector() * 390)
	end
		if SERVER and IsValid(self.Owner) then
		local anglo = Angle(-3, 0, 0)		
		self.Owner:ViewPunch(anglo)
		end
		
end

end

function SWEP:SecondaryAttack()
end

function SWEP:Reload()
end

function SWEP:Holster()
if IsValid(self.Owner) and self.Owner:IsNPC() then return end
if self:GetNW2Bool( "FirstDraw" ) == false then
self:StopSound("Fortnite_CleanCut.Draw")
end
if IsValid(self.Owner) then
if self.Owner:GetActiveWeapon() == self then
self.Owner:SetRunSpeed( baseclass.Get( player_manager.GetPlayerClass(self.Owner) ).RunSpeed )
end
timer.Stop( "backtospeed" .. self:EntIndex() )
return true
end

end

function SWEP:OnRemove()
self:Holster()
return true
end

function SWEP:OnDrop()
self:Holster()
return true
end

function SWEP:OwnerChanged()
self:Holster()
if IsValid(self.Owner) and self.Owner:IsNPC() and SERVER then
self:StopSound("Player.PickupWeapon")
timer.Simple( 1, function() if IsValid(self) and IsValid(self.Owner) then self.Owner:Give("fortnite_pickaxe_cleancut_swep_ai") SafeRemoveEntity(self) end end )
end
return true
end

function SWEP:Equip()
if IsValid(self.Owner) and self.Owner:IsNPC() then
self:StopSound("Player.PickupWeapon")
end
end