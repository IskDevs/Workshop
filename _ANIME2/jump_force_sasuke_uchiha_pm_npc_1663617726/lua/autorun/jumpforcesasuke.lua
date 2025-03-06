if SERVER then
	AddCSLuaFile()
end

player_manager.AddValidModel("Jump Force - Sasuke Uchiha", "models/konnie/jumpforce/sasuke.mdl")
player_manager.AddValidHands( "Jump Force - Sasuke Uchiha", "models/weapons/arms/v_arms_sasuke.mdl", 0, "00000000" )

local Category = "Jump Force"

local function AddNPC( t, class )
list.Set( "NPC", class or t.Class, t )
end

AddNPC( {
Name = "Sasuke Uchiha",
Class = "npc_citizen",
Category = Category,
Model = "models/konnie/jumpforce/sasuke_f.mdl",
KeyValues = { citizentype = CT_UNIQUE, SquadName = "jumpforcesasuke_f" }
}, "npc_jumpforcesasuke_f" )