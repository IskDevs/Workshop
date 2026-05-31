SWEP.Base = "weapon_ballin"
SWEP.Category = "Ballin'"

SWEP.PrintName			= "Admin Ballin'" 
SWEP.Spawnable = true
SWEP.AdminOnly = true

SWEP.chargeMultiplier = 2.2
SWEP.Primary.FireDelay = 0.05

SWEP.maxChargePrimary = 15
SWEP.maxChargeSecondary = 25

SWEP.chargeSpeed = 0.01

function SWEP:Initialize()
    SCKBaseBallin.Initialize(self)
	if CLIENT then
        self.WepSelectIcon = surface.GetTextureID("vgui/entities/weapon_ballinadmin.vmt")
    end
end
