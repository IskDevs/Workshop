--[[
    Stub entity: the old single-use pickup entity is removed in this version.
    This exists only to prevent "unknown entity type" errors if something tries
    to spawn it (old saves, dupes, leftover weapons, etc.).
]]

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Ballin Pickup (Disabled)"
ENT.Spawnable = false

function ENT:Initialize()
    if SERVER then
        self:Remove()
    end
end
