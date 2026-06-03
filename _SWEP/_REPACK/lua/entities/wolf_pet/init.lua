AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

--[[
    Core
]]

function ENT:Initialize()
	self.OffAngle = self.OffAngle or 0

	self:SetModel("models/mcanimals3d_mariro/wolf.mdl")
	self:SetModelScale(0.8)
	self:SetSkin(1)

	self:SetMoveType(MOVETYPE_STEP)
	self:SetSolid(SOLID_VPHYSICS)

	self:SetCollisionGroup(COLLISION_GROUP_WORLD)
	self:SetRenderMode(RENDERMODE_TRANSALPHA)

	local st = {
		mdl = "models/mcanimals3d_mariro/wolf.mdl",
		snd = {
			"minecraftwolfpet/idle_1.wav",
			"minecraftwolfpet/idle_2.wav",
			"minecraftwolfpet/idle_3.wav"
		}
	}

	self.Stages = {st, st}

	self:UpdateStage(1)

	self.m_PlayerCreator = self.Owner

	self.RightMult = math.random(-50, 50)
	self.ForwardMult = math.random(-50, 50)

	--[[
		Sounds
	]]

	local sn_tag = "Wolf Pet Sounds #" .. self.m_PlayerCreator:EntIndex() .. "." .. self:EntIndex()
	timer.Create(sn_tag, 3, 0, function()
		if not IsValid(self) or not IsValid(self.m_PlayerCreator) then
			timer.Remove(sn_tag)
			return
		end
		self:EmitSound(self.StageSounds[math.random(1, #self.StageSounds)])
	end)

	--[[
		Teleport
	]]

	local tp_tag = "Wolf Pet Teleport #" .. self.m_PlayerCreator:EntIndex() .. "." .. self:EntIndex()
	timer.Create(tp_tag, 10, 0, function()
		if not IsValid(self) or not IsValid(self.m_PlayerCreator) then
			timer.Remove(tp_tag)
			return
		end

		local dist = self.m_PlayerCreator:GetPos():DistToSqr(self:GetPos())
		if dist > 360000 then
			self:SetPos(self.m_PlayerCreator:GetPos() + Vector(math.random(-120, 120), math.random(-120, 120), 0))
			self:EmitSound("minecraftfoxpet/teleport_" .. math.random(1, 2) .. ".wav")
		end
	end)
end

function ENT:Think()
	self:UpdatePos()
	self:UpdateAngles(self.OffAngle)
	self:NextThink(CurTime())
	return true
end

ENT.NextTick = 0

local dl = 0.3
function ENT:Use(pl)
	if pl ~= self.m_PlayerCreator then
		return
	end

	local lf = self.NextTick - CurTime()
	if lf < 0 then
		self:UpdateStage((self.Stage ~= 1) and 1 or 2)
		self.NextTick = CurTime() + dl
	end
end

function ENT:OnTakeDamage()
	self:EmitSound("minecraftwolfpet/hurt_" .. math.random(1, 3) .. ".wav")
	if self.Stage ~= 1 then
		self:UpdateStage(1)
	end
end