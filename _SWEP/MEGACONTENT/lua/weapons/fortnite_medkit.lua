/*---------------------------------
FORTNITE BATTLE ROYALE MED KIT 2019
---------------------------------*/
AddCSLuaFile( "fortnite_medkit.lua" )

SWEP.PrintName = "Med Kit"
    
SWEP.Author = "[BoZ]Niko663"
SWEP.Contact = "BattleBus@fortnite.com"
SWEP.Purpose = "For Battle Royale"
SWEP.Instructions = "Primary to Heal Up."

SWEP.Category = "Fortnite: Battle Royale"

SWEP.Spawnable= true
SWEP.AdminSpawnable= true
SWEP.AdminOnly = false

SWEP.ViewModelFOV = 50
SWEP.ViewModel = "models/fortnite/v_fbr_medkit.mdl" 
SWEP.WorldModel = "models/fortnite/w_fbr_medkit.mdl"
SWEP.ViewModelFlip = false

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Slot = 0
SWEP.SlotPos = 0
 
SWEP.UseHands = false

SWEP.HoldType = "normal" 

SWEP.UseType = "fist" 

SWEP.FiresUnderwater = false

SWEP.DrawCrosshair = true

SWEP.DrawAmmo = true

SWEP.Base = "weapon_base"

SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Ammo = "fortnite_medkits"
SWEP.Primary.Automatic = false
SWEP.Primary.Recoil = 0
SWEP.Primary.Delay = 0.05


SWEP.Secondary.ClipSize = 0
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = ""
if (CLIENT) then
SWEP.WepSelectIcon = surface.GetTextureID( "vgui/entities/fortnite_medkit" )
end

SWEP.IronSightsPos = Vector( -6.8977, -23.8562, -10.5259 )
SWEP.IronSightsAng = Vector( 56.5556, -0.4895, -0.0391 )

function SWEP:Initialize() 
        self:SetHoldType( self.HoldType )
	self.UsingMedKit = false
	self.CanPlayMedKitCancelAnim = false
end

function SWEP:CustomAmmoDisplay()

self.AmmoDisplay = self.AmmoDisplay or {}

self.AmmoDisplay.PrimaryClip = self:Ammo1()

return self.AmmoDisplay
end

function SWEP:Deploy()
	if (IsValid(self.Owner:GetViewModel())) then
	self.Owner:GetViewModel():SetWeaponModel( self.ViewModel, self )
	end
	self:SendWeaponAnim( ACT_VM_DRAW )
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() )
        self:EmitSound("Fortnite_Ironsight.Use")
	self.UsingMedKit = false
	self.CanPlayMedKitCancelAnim = false
	self:SetHoldType( self.HoldType )
	return true
end

function SWEP:Holster()
if IsValid(self.Owner) and self.Owner:IsNPC() then return end
if IsValid(self) then
timer.Stop( "UseMedKit" .. self:EntIndex() )
self:StopSound("Fortnite_MedKit.Use")
if IsFirstTimePredicted() then
self:EmitSound("Fortnite_Weapon.StopSound")
end
self:SetHoldType( self.HoldType )
self.UsingMedKit = false
self.CanPlayMedKitCancelAnim = false
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

if self.UsingMedKit == true then return end

if self.Owner:Health() >= self.Owner:GetMaxHealth() and IsFirstTimePredicted() then self:SetNextPrimaryFire( CurTime() + 1 ) timer.Simple( 0, function() if IsFirstTimePredicted() and IsValid(self.Owner) and self.Owner:GetActiveWeapon() == self then self.Owner:ChatPrint( "Can't Use While at or above full Health!" ) end end ) self:EmitSound( "fortnite/shield_denied.ogg" ) self.UsingMedKit = false self.CanPlayCancelAnim = false return end

if self.UsingMedKit == false and self.Owner:Health() < self.Owner:GetMaxHealth() then

self.CanPlayMedKitCancelAnim = true
self:SetHoldType( self.UseType )
self.UsingMedKit = true
self:StopSound("Fortnite_MedKit.Use")
timer.Stop( "UseMedKit" .. self:EntIndex() )
timer.Simple( 0.1, function() if IsValid(self.Owner) and IsValid(self) and self.Owner:GetActiveWeapon() == self and IsFirstTimePredicted() then self:EmitSound("Fortnite_MedKit.Use") end end )
timer.Create( "UseMedKit" .. self:EntIndex(), 10, 1, function() self:AddHealth() self.UsingMedKit = false self.Owner:RemoveAmmo( 1, self.Primary.Ammo ) self:SetHoldType( self.HoldType ) self:SendWeaponAnim( ACT_VM_DRAW ) self.CanPlayMedKitCancelAnim = false end ) 
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
end

end

function SWEP:AddHealth()
if SERVER then
if self.Owner:Health() > self.Owner:GetMaxHealth() then self:EmitSound("Fortnite_Bandage.FinishHeal") return end

self:EmitSound("Fortnite_Bandage.FinishHeal")
if self.Owner:Health() < self.Owner:GetMaxHealth() then
self.Owner:SetHealth( self.Owner:GetMaxHealth() )
self:CheckHealthAfterHeal()
end

end

end

function SWEP:CheckHealthAfterHeal()
if SERVER then
if self.Owner:Health() > self.Owner:GetMaxHealth() then
self.Owner:SetHealth( self.Owner:GetMaxHealth() )
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
timer.Stop( "UseMedKit" .. self:EntIndex() )
self:StopSound("Fortnite_MedKit.Use")
self:SetHoldType( self.HoldType )
self.UsingMedKit = false
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
end
if SERVER then
if self:Ammo1() <= 0 and self:Clip1() <= 0 then
SafeRemoveEntity(self)
end
if self:Clip1() > 0 then
self.Owner:GiveAmmo( self:Clip1(), self.Primary.Ammo, true )
self:SetClip1(0)
end
if self.CanPlayMedKitCancelAnim == true and self.UsingMedKit == false and self.Owner:GetVelocity():Length() > 60 then
self.CanPlayMedKitCancelAnim = false
self:SendWeaponAnim( ACT_VM_IDLE )
end

end

end

end