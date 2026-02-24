AddCSLuaFile()

if CLIENT then
    killicon.Add("ent_dart", "entities/ent_dart_killicon", Color(255, 255, 255, 255))
end

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Nerf Dart"
ENT.Spawnable = false

function ENT:Initialize()
    self:SetModel("models/goldbrick/dart.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)

    local phys = self:GetPhysicsObject()
    if IsValid(phys) then
        phys:Wake()
        phys:AddGameFlag(FVPHYSICS_NO_IMPACT_DMG)

        -- Very low momentum transfer on impact
        phys:SetMass(0.001)

        -- During flight: keep it from dropping immediately
        phys:EnableGravity(true)
        phys:EnableDrag(false)
        phys:SetDamping(0.02, 0.2)
    end

    -- Failsafe cleanup
    timer.Simple(10, function()
        if SERVER and IsValid(self) then self:Remove() end
    end)
end

function ENT:PhysicsCollide(data, phys)
    if self.MarkedForRemoval then return end
    self.MarkedForRemoval = true

    -- Defer collision/physics rule changes out of the physics callback to avoid crash warnings
    timer.Simple(0, function()
        if not IsValid(self) then return end

        self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

        local p = self:GetPhysicsObject()
        if IsValid(p) then
            p:EnableGravity(true)
            p:EnableDrag(true)

            -- bleed off energy so it settles without punching props
            p:SetVelocity(p:GetVelocity() * 0.2)
            p:SetDamping(2, 2)
        end
    end)

    -- Stay around briefly, then disappear
    timer.Simple(1, function()
        if IsValid(self) then self:Remove() end
    end)
end
