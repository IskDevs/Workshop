ENT.Type = "anim"

if SERVER then

AddCSLuaFile( "melee_attack_fortnite_pickaxe.lua" )

function ENT:Initialize()
	self:SetModel( "models/fortnite/meleehitbox.mdl" )
	self:SetSolid(SOLID_VPHYSICS)
	self:PhysicsInit(MOVETYPE_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolidFlags( FSOLID_CUSTOMRAYTEST )
	self:DrawShadow(false)

	local phys = self:GetPhysicsObject()
	if (IsValid(phys)) then
		phys:Wake()
		phys:EnableGravity(false)
		phys:SetMass(1)
end
	self:Fire("kill","",0.1)
	self.FakePredicted = false
end

function ENT:EntityIsVehicle(ent)
if IsValid(ent) and scripted_ents.IsBasedOn(ent:GetClass(), "haloveh_base") or IsValid(ent) and scripted_ents.IsBasedOn(ent:GetClass(), "halohover_base") or IsValid(ent) and scripted_ents.IsBasedOn(ent:GetClass(), "halohover2_base") or IsValid(ent) and scripted_ents.IsBasedOn(ent:GetClass(), "lunasflightschool_basescript") or IsValid(ent) and scripted_ents.IsBasedOn(ent:GetClass(), "wac_hc_base") or IsValid(ent) and scripted_ents.IsBasedOn(ent:GetClass(), "wac_pl_base") or IsValid(ent) and scripted_ents.IsBasedOn(ent:GetClass(), "sent_sakarias_scar_base") or IsValid(ent) and scripted_ents.IsBasedOn(ent:GetClass(), "sent_sakarias_carwheel") and ent.IsDestroyed == false or IsValid(ent) and ent:GetClass() == "sent_sakarias_carwheel" and ent.IsDestroyed == false or IsValid(ent) and ent:GetClass() == "gmod_sent_vehicle_fphysics_base" or IsValid(ent) and ent:GetClass() == "gmod_sent_vehicle_fphysics_wheel" then
return true
else
return false
end

end

function ENT:PhysicsCollide( data, physobj )

 local FortniteMelees = {
	melee_attack_fortnite_pickaxe = true,
	melee_attack_fortnite_infblade = true,
	melee_attack_h1 = true,
	melee_attack_h2 = true,
	melee_attack_h2_bruteshot = true,
	melee_attack_h2_sword = true,
	melee_attack_h2_sword_powerful = true,
	melee_attack_h3 = true,
	melee_attack_h3_powerful = true,
	melee_attack_h3_sword = true,
	melee_attack_h3o = true,
	melee_attack_hreach = true,
	melee_attack_hreach_powerful = true,
	melee_attack_hreach_sword = true
}

local target = data.HitEntity

	if IsValid(self.Owner) and target:IsNPC() and target:GetClass() != "npc_turret_floor" and self.FakePredicted == false and IsValid(target) or IsValid(target) and target:GetClass() == "func_breakable" and IsValid(self.Owner) and self.FakePredicted == false or IsValid(target) and target:GetClass() == "func_breakable_surf" and IsValid(self.Owner) and self.FakePredicted == false then
	
	if self.PickaxeType == "Default" or self.PickaxeType == "GlobalAxe" or self.PickaxeType == "ChocoLlama" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("physics/flesh/flesh_impact_bullet" .. math.random(1,5) .. ".wav")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "AbominableAxe" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_AbominableAxe.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ACDC" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_ACDC.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axercise" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Axercise.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axeroni" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Axeroni.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "CleanCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_CleanCut.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DeathValley" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DeathValley.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DirectorsCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DirectorsCut.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "PartyAnimal" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_PartyAnimal.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Reaper" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Reaper.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ForkKnife" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_ForkKnife.Impact_" .. math.random(1,2) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DiscoBrawl" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DiscoBrawl.Impact_" .. math.random(1,5) .."")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 1 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_1")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 2 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_2")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 3 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_3")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 4 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_4")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 5 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_5")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 6 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_6")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 7 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_7")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 8 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_8")
	target:Fire( "Shatter","0,0,0",0)
	SafeRemoveEntity(self)
	end

	elseif IsValid(self.Owner) and target:IsNextBot() and self.FakePredicted == false and IsValid(target) then
	
	if self.PickaxeType == "Default" or self.PickaxeType == "GlobalAxe" or self.PickaxeType == "ChocoLlama" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("physics/flesh/flesh_impact_bullet" .. math.random(1,5) .. ".wav")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "AbominableAxe" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_AbominableAxe.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ACDC" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_ACDC.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axercise" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Axercise.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axeroni" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Axeroni.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "CleanCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_CleanCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DeathValley" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DeathValley.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DirectorsCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DirectorsCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "PartyAnimal" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_PartyAnimal.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Reaper" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Reaper.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ForkKnife" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_ForkKnife.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DiscoBrawl" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DiscoBrawl.Impact_" .. math.random(1,5) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 1 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_1")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 2 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_2")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 3 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_3")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 4 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_4")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 5 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_5")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 6 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_6")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 7 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_7")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 8 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_8")
	SafeRemoveEntity(self)
	end

	elseif target:IsPlayer() and IsValid(target) and IsValid(self.Owner) and self.FakePredicted == false then

	if self.PickaxeType == "Default" or self.PickaxeType == "GlobalAxe" or self.PickaxeType == "ChocoLlama" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("physics/flesh/flesh_impact_bullet" .. math.random(1,5) .. ".wav")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "AbominableAxe" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_AbominableAxe.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ACDC" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_ACDC.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axercise" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Axercise.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axeroni" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Axeroni.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "CleanCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_CleanCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DeathValley" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DeathValley.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DirectorsCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DirectorsCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "PartyAnimal" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_PartyAnimal.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Reaper" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_Reaper.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ForkKnife" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_ForkKnife.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DiscoBrawl" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	target:EmitSound("Fortnite_DiscoBrawl.Impact_" .. math.random(1,5) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 1 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_1")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 2 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_2")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 3 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_3")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 4 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_4")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 5 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_5")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 6 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_6")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 7 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_7")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 8 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target:EmitSound("Fortnite_Marshmello.Impact_8")
	SafeRemoveEntity(self)
	end

	elseif IsValid(self.Owner) and IsValid(target) and IsValid(target.Owner) and FortniteMelees[target:GetClass()] and self.FakePredicted == false then
	
	if self.PickaxeType == "Default" or self.PickaxeType == "GlobalAxe" or self.PickaxeType == "ChocoLlama" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("physics/flesh/flesh_impact_bullet" .. math.random(1,5) .. ".wav")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "AbominableAxe" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_AbominableAxe.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ACDC" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_ACDC.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axercise" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_Axercise.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axeroni" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_Axeroni.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "CleanCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_CleanCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DeathValley" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_DeathValley.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DirectorsCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_DirectorsCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "PartyAnimal" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_PartyAnimal.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Reaper" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_Reaper.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ForkKnife" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_ForkKnife.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DiscoBrawl" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	target.Owner:EmitSound("Fortnite_DiscoBrawl.Impact_" .. math.random(1,5) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 1 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target.Owner:EmitSound("Fortnite_Marshmello.Impact_1")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 2 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target.Owner:EmitSound("Fortnite_Marshmello.Impact_2")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 3 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target.Owner:EmitSound("Fortnite_Marshmello.Impact_3")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 4 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target.Owner:EmitSound("Fortnite_Marshmello.Impact_4")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 5 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target.Owner:EmitSound("Fortnite_Marshmello.Impact_5")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 6 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target.Owner:EmitSound("Fortnite_Marshmello.Impact_6")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 7 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target.Owner:EmitSound("Fortnite_Marshmello.Impact_7")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 8 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target.Owner:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFX(target)
	target.Owner:EmitSound("Fortnite_Marshmello.Impact_8")
	SafeRemoveEntity(self)
	end

	elseif IsValid(self.Owner) and self:EntityIsVehicle(target) and self.FakePredicted == false then

	if self.PickaxeType == "Default" or self.PickaxeType == "ChocoLlama" or self.PickaxeType == "GlobalAxe" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("physics/concrete/concrete_impact_hard1.wav")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "AbominableAxe" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_AbominableAxe.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ACDC" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_ACDC.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axercise" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_Axercise.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axeroni" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_Axeroni.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "CleanCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_CleanCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DeathValley" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_DeathValley.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DirectorsCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_DirectorsCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "PartyAnimal" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_PartyAnimal.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Reaper" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_Reaper.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ForkKnife" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_ForkKnife.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DiscoBrawl" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:EmitSound("Fortnite_DiscoBrawl.Impact_" .. math.random(1,5) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 1 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_1")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 2 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_2")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 3 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_3")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 4 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_4")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 5 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_5")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 6 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_6")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 7 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_7")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 8 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	target:TakeDamage(10,self.Owner,self.Owner)
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_8")
	SafeRemoveEntity(self)
	end

	elseif IsValid(self.Owner) and self.FakePredicted == false then

	if self.PickaxeType == "Default" or self.PickaxeType == "ChocoLlama" or self.PickaxeType == "GlobalAxe" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("physics/concrete/concrete_impact_hard1.wav")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "AbominableAxe" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_AbominableAxe.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ACDC" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_ACDC.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axercise" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_Axercise.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Axeroni" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_Axeroni.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "CleanCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_CleanCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DeathValley" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_DeathValley.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DirectorsCut" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_DirectorsCut.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "PartyAnimal" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_PartyAnimal.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Reaper" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_Reaper.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "ForkKnife" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_ForkKnife.Impact_" .. math.random(1,2) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "DiscoBrawl" then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:EmitSound("Fortnite_DiscoBrawl.Impact_" .. math.random(1,5) .."")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 1 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_1")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 2 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_2")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 3 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_3")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 4 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_4")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 5 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_5")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 6 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_6")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 7 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_7")
	SafeRemoveEntity(self)
	elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 8 then
	self.FakePredicted = true
	if self.FakePredicted == false then SafeRemoveEntity(self) end
	self:ImpactFXHit()
	self:EmitSound("Fortnite_Marshmello.Impact_8")
	SafeRemoveEntity(self)
	end
end
end

function ENT:OnTakeDamage( dmginfo )
end


function ENT:Use( activator, caller )
end

function ENT:ImpactFXHit()
local effectdata = EffectData()
effectdata:SetOrigin(self:GetPos() + self:GetForward() * -10 )
effectdata:SetEntity(self)
effectdata:SetStart(self:GetPos())
effectdata:SetNormal(Vector(0,0,1))
util.Effect( "fortnite_pickaxe_marshmello_impact", effectdata )
end

function ENT:ImpactFX(ent)
local effectdata = EffectData()
effectdata:SetOrigin(ent:GetPos() + ent:GetUp() * 65 )
effectdata:SetEntity(self)
effectdata:SetStart(self:GetPos())
effectdata:SetNormal(Vector(0,0,1))
util.Effect( "fortnite_pickaxe_marshmello_impact", effectdata )
end

function ENT:HurtNextBot(ent)

	if IsValid(self.Owner) then
			if self.PickaxeType == "Default" or self.PickaxeType == "GlobalAxe" or self.PickaxeType == "ChocoLlama" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("physics/flesh/flesh_impact_bullet" .. math.random(1,5) .. ".wav")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Axercise" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_Axercise.Impact_" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Axeroni" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_Axeroni.Impact_" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "AbominableAxe" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_AbominableAxe.Impact" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "ACDC" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_ACDC.Impact_" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "CleanCut" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_CleanCut.Impact_" .. math.random(1,2) .. "" )
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "DeathValley" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_DeathValley.Impact_" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "DirectorsCut" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_DirectorsCut.Impact_" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "PartyAnimal" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_PartyAnimal.Impact_" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Reaper" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_Reaper.Impact_" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "ForkKnife" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_ForkKnife.Impact_" .. math.random(1,2) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "DiscoBrawl" then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					ent:EmitSound("Fortnite_DiscoBrawl.Impact_" .. math.random(1,5) .. "")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 1 then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					self:ImpactFX(ent)
					ent:EmitSound("Fortnite_Marshmello.Impact_1")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 2 then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					self:ImpactFX(ent)
					ent:EmitSound("Fortnite_Marshmello.Impact_2")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 3 then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					self:ImpactFX(ent)
					ent:EmitSound("Fortnite_Marshmello.Impact_3")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 4 then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					self:ImpactFX(ent)
					ent:EmitSound("Fortnite_Marshmello.Impact_4")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 5 then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					self:ImpactFX(ent)
					ent:EmitSound("Fortnite_Marshmello.Impact_5")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 6 then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					self:ImpactFX(ent)
					ent:EmitSound("Fortnite_Marshmello.Impact_6")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 7 then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					self:ImpactFX(ent)
					ent:EmitSound("Fortnite_Marshmello.Impact_7")
					SafeRemoveEntity(self)
			elseif self.PickaxeType == "Marshmello" and self.MarshmelloNote == 8 then
					self.FakePredicted = true
					if self.FakePredicted == false then SafeRemoveEntity(self) end
					ent:TakeDamage(10,self.Owner,self.Owner)
					self:ImpactFX(ent)
					ent:EmitSound("Fortnite_Marshmello.Impact_8")
					SafeRemoveEntity(self)

	end

end

end

function ENT:Think()

local HitEntity = ents.FindInSphere( self:GetPos(), 16 )
	if HitEntity then
				for i = 1, #HitEntity do
					local hit = HitEntity[ i ]
					if hit:IsNextBot() and self.FakePredicted == false and IsValid(hit) then
					self:HurtNextBot(hit)
		end

	local HitPlayerWhenMoving = ents.FindInSphere( self:GetPos(), 47 )
	if HitPlayerWhenMoving then
				for i = 1, #HitPlayerWhenMoving do
					local hit = HitPlayerWhenMoving[ i ]
					if hit:IsPlayer() and hit != self.Owner and hit:GetVelocity():Length() > 60 and self.FakePredicted == false and IsValid(hit) then
					self:HurtNextBot(hit)
		end
end
end
end
end
end

end