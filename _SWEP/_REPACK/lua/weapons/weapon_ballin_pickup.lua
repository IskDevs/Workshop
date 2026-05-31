--[[
    This addon variant intentionally removes the old "single use" pickup weapon.
    If a server/client still has the original file lingering (e.g. from an older install),
    we override it with this safe stub so it cannot be spawned or used and will not error.
]]

if SERVER then
    AddCSLuaFile()
end

SWEP.PrintName = "Ballin' (Pickup) [Disabled]"
SWEP.Author = "Ballin'"
SWEP.Instructions = "Disabled in this version"
SWEP.Category = "Ballin'"

SWEP.Spawnable = false
SWEP.AdminSpawnable = false
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false

SWEP.ViewModel = "models/weapons/c_arms.mdl"
SWEP.WorldModel = ""

function SWEP:Initialize()
    self:SetHoldType("normal")
end

-- Immediately strip if somehow obtained.
function SWEP:Deploy()
    if SERVER then
        local owner = self:GetOwner()
        if IsValid(owner) then
            owner:StripWeapon(self:GetClass())
        end
    end
    return false
end

function SWEP:PrimaryAttack() end
function SWEP:SecondaryAttack() end
