CupheadTable = {
"models/pipann/cuphead/cuphead_pm.mdl",
"models/pipann/cuphead/mugman/mugman_pm.mdl",
}

if !ConVarExists("cup_EditScale") then
	CreateConVar("cup_EditScale", 1, {FCVAR_ARCHIVE, FCVAR_REPLICATED, FCVAR_SERVER_CAN_EXECUTE}, "Toggles resized hulls and eye size on playermodels.")
end

local cup = FindMetaTable("Player")

function cup:DefaultOffsets()
	self:SetCurrentViewOffset( Vector(0,0,64) )
	self:SetViewOffset( Vector(0,0,64) )
	self:SetViewOffsetDucked( Vector(0,0,28) )
	self:ResetHull()
end

function cup:CupheadOffsets()
	if CLIENT and !table.HasValue(CupheadTable, self:GetModel()) then
		self:DefaultOffsets()
	end
	if GetConVar("cup_EditScale"):GetInt() == 1 then
		self:SetViewOffset( Vector(0,0,26) )
		self:SetViewOffsetDucked( Vector(0,0,13) )
		self:SetHull( Vector( -13, -13, 0 ), Vector( 13, 13, 28 ) )
		self:SetHullDuck( Vector( -13, -13, 0 ), Vector( 13, 13, 12 ) )
	else
		self:DefaultOffsets()
	end
end

if SERVER then
	hook.Add( "KeyPress", "cup_KeyPress", function(cup, key)
		if !cup:GetVar("cup_keypress") and table.HasValue(CupheadTable, cup:GetModel()) and cup:Alive() then
			cup:SetVar("cup_keypress", true)
			cup:SetNWInt("cup_CupheadOffsets", 2)
			cup:CupheadOffsets()
		end
	end)
///////////////////////////////////////////////////////////////////	
	hook.Add( "PlayerSpawn", "cup_Spawn", function(cup)
		timer.Simple( 0.1, function()	
				cup:SetVar("cup_keypress", false)
		end)
	end)
///////////////////////////////////////////////////////////////////	
	hook.Add( "PlayerDeath", "cup_OnDeath", function(cup)
		if cup:GetVar("cup_keypress") == true then
			cup:SetNWInt("cup_CupheadOffsets", 1)
			cup:DefaultOffsets()
		end
	end)
end

if CLIENT then
	local t = 0
	hook.Add("Tick", "cup_Offsets_cl", function()
		t = t+1; if t == 10 then t = 0;
		if LocalPlayer():IsValid() and LocalPlayer():GetNWInt("cup_CupheadOffsets") == 2 then
			LocalPlayer():CupheadOffsets()
		elseif LocalPlayer():IsValid() and LocalPlayer():GetNWInt("cup_CupheadOffsets") == 1 then
			LocalPlayer():DefaultOffsets()
			LocalPlayer():SetNWInt("cup_CupheadOffsets", 0)
		end
		end
	end)
end