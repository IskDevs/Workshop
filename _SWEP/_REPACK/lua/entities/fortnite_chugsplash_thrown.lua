ENT.Type = "anim"

if SERVER then

AddCSLuaFile( "fortnite_chugsplash_thrown.lua" )

function ENT:Initialize()

	self:SetModel("models/fortnite/w_fbr_chugsplash.mdl")
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:DrawShadow( false )
	self.ChugBlowUp = CurTime() + 25
	
	local phys = self:GetPhysicsObject()
	if (IsValid(phys)) then
	phys:Wake()
	phys:SetMass(1)
	end
	
	self.timeleft = CurTime() + 2.8
	self:Think()
end

function ENT:Think()

	self.ChugSplashLoop = CreateSound( self, "Fortnite_ChugSplash.FlyBy" )
	self.ChugSplashLoop:Play()
	
	if self.ChugBlowUp < CurTime() then
			self:Burst()
			self.ChugBlowUp = CurTime() + 50
		end

	self:NextThink( CurTime() )
	return true
end


function ENT:Burst()

if SERVER then

local toheal = ents.FindInSphere( self:GetPos(), 130 )
	if toheal then
				for i = 1, #toheal do
					local v = toheal[ i ]
					if v:IsPlayer() and IsValid(v) then
					self:AddHealth( v )
					end
					end
					end

local effectdata = EffectData()
		effectdata:SetOrigin(self:GetPos())
		effectdata:SetEntity(self)
		effectdata:SetStart(self:GetPos())
		effectdata:SetNormal(Vector(0,0,1))
		effectdata:SetScale(22)
		effectdata:SetRadius(50)
		util.Effect("WaterSplash", effectdata)

		self:StopSound("Fortnite_ChugSplash.FlyBy")
		SafeRemoveEntity(self)

end

end

function ENT:AddHealth( ent )
if ent:Health() < ent:GetMaxHealth() then
ent:SetHealth( ent:Health() + 5 )
if ent:Health() > ent:GetMaxHealth() then
ent:SetHealth( ent:GetMaxHealth() )
end
elseif ent:Health() >= ent:GetMaxHealth() and ent:Armor() < ent:GetMaxArmor() then
ent:SetArmor( ent:Armor() + 1 )
if ent:Armor() > ent:GetMaxArmor() then
ent:SetArmor(ent:GetMaxArmor())
end
end

end

function ENT:OnRemove()
if self.ChugSplashLoop != nil then
self.ChugSplashLoop:ChangeVolume(0)
self.ChugSplashLoop:Stop()
end
if IsFirstTimePredicted() then
self:StopSound("Fortnite_ChugSplash.FlyBy")
end
end

function ENT:PhysicsCollide(data,phys)
	self:EmitSound("fortnite/chugsplash_burst.ogg")
	self.ChugBlowUp = CurTime()
end

end

function ENT:Touch(ent)
			if ent:IsNextBot() and IsValid(ent) and self.FakePredicted == false then
			self.FakePredicted = true
			if self.FakePredicted == false then SafeRemoveEntity(self) end
			self:Burst()
		end
end