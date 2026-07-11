/*---------------------------------
FORTNITE BATTLE ROYALE SMALL SHIELD POTION 2019
---------------------------------*/
AddCSLuaFile( "fortnite_smallshieldpotion.lua" )

SWEP.PrintName = "Small Shield Potion"
    
SWEP.Author = "[BoZ]Niko663"
SWEP.Contact = "BattleBus@fortnite.com"
SWEP.Purpose = "For Battle Royale"
SWEP.Instructions = "Primary to drink."

SWEP.Category = "Fortnite: Battle Royale"

SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModelFOV = 50
SWEP.ViewModel = "models/fortnite/v_fbr_smallshieldpotion.mdl" 
SWEP.WorldModel = "models/fortnite/w_fbr_smallshieldpotion.mdl"
SWEP.ViewModelFlip = false

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 0
SWEP.SlotPos = 0
 
SWEP.UseHands = false

SWEP.HoldType = "normal" 

SWEP.FiresUnderwater = false

SWEP.DrawCrosshair = true

SWEP.DrawAmmo = true

SWEP.Base = "weapon_base"

SWEP.Primary.ClipSize = 5
SWEP.Primary.Ammo = "fortnite_smallshields"
SWEP.Primary.DefaultClip = 5
SWEP.Primary.NumberofShots = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Recoil = 0
SWEP.Primary.Delay = 0.05


SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = ""
if (CLIENT) then
SWEP.WepSelectIcon = surface.GetTextureID( "vgui/entities/fortnite_smallshieldpotion" )
end

SWEP.IronSightsPos = Vector( -6.8977, -23.8562, -10.5259 )
SWEP.IronSightsAng = Vector( 56.5556, -0.4895, -0.0391 )

function SWEP:CustomAmmoDisplay()

self.AmmoDisplay = self.AmmoDisplay or {}

self.AmmoDisplay.PrimaryClip = self:Ammo1()

return self.AmmoDisplay
end

function SWEP:Initialize() 
        self:SetHoldType( self.HoldType )
	self.DrinkingShield = false
	self:SetNW2Bool( "Ironsights", false )
end

function SWEP:Deploy()
	if (IsValid(self.Owner:GetViewModel())) then
	self.Owner:GetViewModel():SetWeaponModel( self.ViewModel, self )
	end
	self:SendWeaponAnim( ACT_VM_DRAW )
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() )
        self:EmitSound("Fortnite_Ironsight.Use")
	self.DrinkingShield = false
	self.Owner:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
	return true
end

function SWEP:Holster()
if IsValid(self.Owner) and self.Owner:IsNPC() then return end
if IsValid(self) then
timer.Stop( "DrinkShieldPotion" .. self:EntIndex() )
self:StopSound("Fortnite_SmallShieldPotion.Drink")
if IsFirstTimePredicted() then
self:EmitSound("Fortnite_Weapon.StopSound")
end
self:SetNW2Bool( "Ironsights", false )
self.DrinkingShield = false
if IsValid(self.Owner) then
self.Owner:AnimResetGestureSlot(GESTURE_SLOT_CUSTOM)
self.Owner:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
end
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
return true
end

function SWEP:SecondaryAttack()
end

function SWEP:PrimaryAttack()
if ( self:Ammo1() <= 0 or IsValid(self.Owner) and self.Owner:IsNPC() ) then return end

if self.DrinkingShield == true then return end

if self.Owner:Armor() >= 50 and IsFirstTimePredicted() then self:SetNextPrimaryFire( CurTime() + 1 ) timer.Simple( 0, function() if IsFirstTimePredicted() and IsValid(self.Owner) and self.Owner:GetActiveWeapon() == self then self.Owner:ChatPrint( "Can't Use While at or above 50 Shield!" ) end end ) self:EmitSound( "fortnite/shield_denied.ogg" ) self:SetNW2Bool( "Ironsights", false ) self.DrinkingShield = false return end

if self.DrinkingShield == false and self.Owner:Armor() < 0 then

self.DrinkingShield = true
self:StopSound("Fortnite_SmallShieldPotion.Drink")
timer.Stop( "DrinkShieldPotion" .. self:EntIndex() )
bIronsights = !self:SetNW2Bool( "Ironsights", b )
timer.Simple( 0.1, function() if IsValid(self.Owner) and IsValid(self) and self.Owner:GetActiveWeapon() == self and ( self:GetNW2Bool( "Ironsights" ) != false ) and IsFirstTimePredicted() then self.Owner:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 1971 ) self:EmitSound("Fortnite_SmallShieldPotion.Drink") end end )
self:SetIronsights( bIronsights )
timer.Create( "DrinkShieldPotion" .. self:EntIndex(), 2, 1, function() self:AddShield() self.DrinkingShield = false self.Owner:RemoveAmmo( 1, self.Primary.Ammo ) self:SetNW2Bool( "Ironsights", false ) self.Owner:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 ) end ) 
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
end

end

function SWEP:AddHealth()

if SERVER then
if self.Owner:Health() > 0 then self:EmitSound("Fortnite_SlurpJuice.DrinkComplete") self.Owner:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 ) return end

self:EmitSound("Fortnite_SlurpJuice.DrinkComplete")
if self.Owner:Health() < 75 then
self.Owner:SetHealth( self.Owner:Health() + 25 )
self:CheckShield()
end

end

end

function SWEP:CheckShield()
if SERVER then
if self.Owner:Armor() > 0 then
self.Owner:SetArmor( 0 )
end

if self:Ammo1() == 1 then
self.Owner.DroppedFortniteWeapon = true
SafeRemoveEntity(self)
end

end

end

function SWEP:Think()
if IsValid(self.Owner) and IsValid(self) then
if self.Owner:GetVelocity():Length() > 60 then
timer.Stop( "DrinkShieldPotion" .. self:EntIndex() )
self:StopSound("Fortnite_SmallShieldPotion.Drink")
self:SetNW2Bool( "Ironsights", false )
self.DrinkingShield = false
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self.Owner:DoCustomAnimEvent( PLAYERANIMEVENT_CUSTOM_SEQUENCE, 0 )
end
if SERVER then
if self:Ammo1() <= 0 and self:Clip1() <= 0 then
SafeRemoveEntity(self)
end
if self:Clip1() > 0 then
self.Owner:GiveAmmo( self:Clip1(), self.Primary.Ammo, true )
self:SetClip1(0)
end

end

end

end

-- IRONSIGHTS

local IRONSIGHT_TIME = 0.3

function SWEP:GetViewModelPosition( pos, ang )

	if ( !self.IronSightsPos ) then return pos, ang end

	local bIron = self:GetNW2Bool( "Ironsights" )
	
	if ( bIron != self.bLastIron ) then
	
		self.bLastIron = bIron 
		self.fIronTime = CurTime()
		
		if ( bIron ) then 
			self.SwayScale 	= 0.3
			self.BobScale 	= 0.1
		else 
			self.SwayScale 	= 1.0
			self.BobScale 	= 1.0
		end
	
	end
	
	local fIronTime = self.fIronTime or 0

	if ( !bIron && fIronTime < CurTime() - IRONSIGHT_TIME ) then 
		return pos, ang 
	end
	
	local Mul = 1.0
	
	if ( fIronTime > CurTime() - IRONSIGHT_TIME ) then
	
		Mul = math.Clamp( (CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1 )
		
		if (!bIron) then Mul = 1 - Mul end
	
	end

	local Offset	= self.IronSightsPos
	
	if ( self.IronSightsAng ) then
	
		ang = ang * 1
		ang:RotateAroundAxis( ang:Right(), 		self.IronSightsAng.x * Mul )
		ang:RotateAroundAxis( ang:Up(), 		self.IronSightsAng.y * Mul )
		ang:RotateAroundAxis( ang:Forward(), 	self.IronSightsAng.z * Mul )
	
	
	end
	
	local Right 	= ang:Right()
	local Up 		= ang:Up()
	local Forward 	= ang:Forward()
	
	

	pos = pos + Offset.x * Right * Mul
	pos = pos + Offset.y * Forward * Mul
	pos = pos + Offset.z * Up * Mul

	return pos, ang
	
end

function SWEP:SetIronsights( b )

	self:SetNW2Bool( "Ironsights", b )

end