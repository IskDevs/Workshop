AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

--[[
    Core
]]

function ENT:SpawnFunction(pl, tr, class)
	if not tr.Hit then 
		return 
	end

	local pos = tr.HitPos + tr.HitNormal * 20
	local ang = pl:EyeAngles()
	ang.p = 0
	ang.y = ang.y + 180

	local ent = ents.Create(class)
	ent:SetPos(pos)
	ent:SetAngles(ang)
	ent:Spawn()
	ent:Activate()

	ent.Owner = pl

	ent:EmitSound("minecraftfoxpet/teleport_" .. math.random(1, 2) .. ".wav")

	return ent
end

function ENT:Initialize()
	self.OffAngle = self.OffAngle or 0

	self:SetModel("models/models/model/minecraft/fox_stand.mdl")

	self:SetMoveType(MOVETYPE_STEP)
	self:SetSolid(SOLID_VPHYSICS)

	self:SetCollisionGroup(COLLISION_GROUP_WORLD)
	self:SetRenderMode(RENDERMODE_TRANSALPHA)

	self:UpdateStage(1)

	self.m_PlayerCreator = self.Owner

	self.RightMult = math.random(-50, 50)
	self.ForwardMult = math.random(-50, 50)

	--[[
		Sounds
	]]

	local sn_tag = "Fox Pet Sounds #" .. self.m_PlayerCreator:EntIndex() .. "." .. self:EntIndex()
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

	local tp_tag = "Fox Pet Teleport #" .. self.m_PlayerCreator:EntIndex() .. "." .. self:EntIndex()
	timer.Create(tp_tag, 10, 0, function()
		if not IsValid(self) or not IsValid(self.m_PlayerCreator) then
			timer.Remove(tp_tag)
			return
		end

		if self.Stage == 2 or self.Stage == 3 then
			return
		end

		local dist = self.m_PlayerCreator:GetPos():DistToSqr(self:GetPos())
		if dist > 360000 then
			self:SetPos(self.m_PlayerCreator:GetPos() + Vector(math.random(-120, 120), math.random(-120, 120), 0))
			self:EmitSound("minecraftfoxpet/teleport_" .. math.random(1, 2) .. ".wav")
		end
	end)

	--[[
		Sleep
	]]

	local slp_tag = "Fox Pet Sleep #" .. self.m_PlayerCreator:EntIndex() .. "." .. self:EntIndex()
	timer.Create(slp_tag, 15, 0, function()
		if not IsValid(self) or not IsValid(self.m_PlayerCreator) then
			timer.Remove(slp_tag)
			return
		end

		if self.Stage ~= 2 then
			return
		end

		for _, ent in pairs(ents.FindInSphere(self:GetPos(), 400)) do
			if ent:IsPlayer() then
				return
			end
		end

		self:UpdateStage(3)
	end)
end

function ENT:OnDuplicated()
	self:UpdateStage(1)
	self.RightMult = math.random(-50, 50)
	self.ForwardMult = math.random(-50, 50)
end

function ENT:Think()
	self:UpdatePos()

	if self.Stage ~= 3 then
		self:UpdateAngles(self.OffAngle)
	else
		self:SetPos(self:GetPos() + Vector(0, 0, 1) * math.sin(CurTime() * 1.5) / 60)
	end

	self:NextThink(CurTime())
	return true
end

--[[
	Moving
]]

function ENT:UpdateAngles(ang)
	local owner = self.m_PlayerCreator
	if not IsValid(owner) then
		SafeRemoveEntity(self)
		return
	end

	if not self.angWeight then 
		self.angWeight = 0 
	end

	local vel = self:GetVelocity()
	local speed = vel:LengthSqr() * 0.0005

	if speed > 1.5 then
		self.angWeight = math.Approach(self.angWeight, 1, FrameTime() * 3)
	else
		self.angWeight = math.Approach(self.angWeight, 0, FrameTime() * 2.5)
	end

	ang = ang or 0
	local angStop = Angle(0, owner:GetAngles().y, 0) 
	if IsValid(owner) and self.Stage ~= 1 then
		angStop = Angle(0, owner:GetAngles().y + 180 or 0, 0)
	end

	local angMove = Angle(0, vel:Angle().y + ang, 0)
	self:SetAngles(LerpAngle(self.angWeight, angStop, angMove))

	if self.Stage == 1 then
		self:SetAngles(self:GetAngles() + Angle(0, math.sin(CurTime() * 1.5) * -8, 0))
	end
end

function ENT:UpdatePos()
	local owner = self.m_PlayerCreator
	if not IsValid(owner) then
		SafeRemoveEntity(self)
		return 
	end

	local ownerAng = Angle(0, 0, 0)

	local origin = owner:GetPos() - Vector(0, 0, 15)
	local ownerPos = origin + ownerAng:Right() * self.RightMult + ownerAng:Up() * 20 + ownerAng:Forward() * self.ForwardMult

	local trace = {}
	trace.start = owner:GetPos() - Vector(0, 0, 10)
	trace.endpos = ownerPos
	trace.filter = {owner}

	local tr = util.TraceLine(trace)
	ownerPos = tr.HitPos 

	local self_pos = self:GetPos()

	local trace_gr = util.TraceLine({
		start = self_pos,
		endpos = self_pos - (Vector(0, 0, 1) * 16384),
		filter = self,
		mask = MASK_SOLID_BRUSHONLY
	})

	local z = trace_gr.HitPos.z + 5
	if self_pos:DistToSqr(ownerPos) > 22500 then
		z = z + 15
	end

	local pos = Vector(ownerPos.x, ownerPos.y, z) - self_pos
	local vel = math.Clamp(pos:Length(), 0, 150)
	pos:Normalize()

	if self.Stage ~= 1 then
		self:SetLocalVelocity(Vector(0, 0, 0))
		return
	end

	self:SetLocalVelocity(pos * vel * 4)
end

--[[
    Other
]]

function ENT:UpdateStage(n)
	local st = n and n or math.random(1, #self.Stages)
	local st_data = self.Stages[st]

	self:SetModel(st_data.mdl)
	self.Stage = st
	self.StageSounds = st_data.snd
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
	self:EmitSound("minecraftfoxpet/hurt_" .. math.random(1, 4) .. ".wav")
	if self.Stage ~= 1 then
		self:UpdateStage(1)
	end
end