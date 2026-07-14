/*---------------------------------
FORTNITE BATTLE ROYALE CHUG SPLASH 2019
---------------------------------*/
AddCSLuaFile( "fortnite_chugsplash.lua" )

SWEP.PrintName = "Chug Splash"
    
SWEP.Author = "[BoZ]Niko663"
SWEP.Contact = "BattleBus@fortnite.com"
SWEP.Purpose = "For Battle Royale"
SWEP.Instructions = "Primary to throw."

SWEP.Category = "Fortnite: Battle Royale"

SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModelFOV = 90
SWEP.ViewModel = "models/fortnite/v_fbr_chugsplash.mdl" 
SWEP.WorldModel = "models/fortnite/w_fbr_chugsplash.mdl"
SWEP.ViewModelFlip = false

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 0
SWEP.SlotPos = 0
 
SWEP.UseHands = false

SWEP.HoldType = "normal" 

SWEP.AimType = "grenade"

SWEP.FiresUnderwater = false

SWEP.DrawCrosshair = true

SWEP.DrawAmmo = true

SWEP.Base = "weapon_base"

SWEP.Primary.TakeAmmo = 1
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Ammo = ""
SWEP.Primary.Automatic = false
SWEP.Primary.Recoil = 0.2
SWEP.Primary.Delay = 1

SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = ""
if (CLIENT) then
SWEP.WepSelectIcon = surface.GetTextureID( "vgui/entities/fortnite_chugsplash" )
end

function SWEP:Initialize() 
        self:SetHoldType( self.HoldType )
	self.FirstDraw = true
end

function SWEP:CustomAmmoDisplay()

self.AmmoDisplay = self.AmmoDisplay or {}

self.AmmoDisplay.PrimaryClip = self:Clip1()

return self.AmmoDisplay
end

function SWEP:Deploy()
	if self.FirstDraw == true then
	self:SetClip1(self.Primary.ClipSize - 1)
	timer.Simple( 0, function() if IsValid(self) then self:SetClip1(self.Primary.ClipSize) end end )
	self.FirstDraw = false
	end
	if (IsValid(self.Owner:GetViewModel())) then
	self.Owner:GetViewModel():SetWeaponModel( self.ViewModel, self )
	end
	self:SendWeaponAnim( ACT_VM_DRAW )
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() )
        self:EmitSound("Fortnite_Ironsight.Use")
	return true
end

function SWEP:Reload()
end

function SWEP:Holster()
if IsValid(self.Owner) and self.Owner:IsNPC() then return end
timer.Stop( "ReDeploy" .. self:EntIndex() )
timer.Stop( "ChugThrow" .. self:EntIndex() )
timer.Stop( "holdtype" .. self:EntIndex() )
self:SetHoldType( self.HoldType )
if IsFirstTimePredicted() then
self:EmitSound("Fortnite_Weapon.StopSound")
end
return true
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
return true
end

function SWEP:SecondaryAttack()
end

function SWEP:PrimaryAttack()
if ( !self:CanPrimaryAttack() or IsValid(self.Owner) and self.Owner:IsNPC() ) then return end

self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
self:SetHoldType( self.AimType )

timer.Create( "ChugThrow" .. self:EntIndex(), 0.15, 1, function() self:ThrowChugSplash() end )

timer.Stop( "holdtype" .. self:EntIndex() )
timer.Create( "holdtype" .. self:EntIndex(), 2, 1, function() if IsValid(self) then self:SetHoldType( self.HoldType ) end end ) 
timer.Create( "ReDeploy" .. self:EntIndex(), 0.5, 1, function() if IsValid(self) then self:Deploy() end end )
 
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
end

function SWEP:ThrowChugSplash()

if IsFirstTimePredicted() then

	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self.Owner:EmitSound("Fortnite_ChugSplash.Throw")

	local rnda = self.Primary.Recoil * -1 
	local rndb = self.Primary.Recoil * math.random(-1, 1) 

	self.Owner:ViewPunch( Angle( rnda,rndb,rnda ) ) 
	self:TakePrimaryAmmo(self.Primary.TakeAmmo) 

	local aim = self.Owner:GetAimVector()
	local side = aim:Cross(Vector(0,0,1))
	local up = side:Cross(aim)
	local pos = self.Owner:GetShootPos() + side * 10 + up * 0

	if SERVER then
	local rocket = ents.Create("fortnite_chugsplash_thrown")
	if !IsValid(rocket) then return end
	rocket:SetAngles(self.Owner:GetAimVector():Angle(90,90,0))
	rocket:SetPos(pos)
	rocket:SetOwner(self.Owner)
	rocket:Spawn()
	rocket.Owner = self.Owner
	rocket:Activate()
		local phys = rocket:GetPhysicsObject()
			phys:SetVelocity(self.Owner:GetAimVector() * 1000)
	end
		if SERVER and IsValid(self.Owner) then
		local anglo = Angle(-3, 0, 0)		
		self.Owner:ViewPunch(anglo)
		end

end

end

function SWEP:Think()
if self:Clip1() <= 0 and SERVER then
self.Owner.DroppedFortniteWeapon = true
SafeRemoveEntity(self)
end

end