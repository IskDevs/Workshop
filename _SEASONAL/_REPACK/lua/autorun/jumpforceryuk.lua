if SERVER then
	AddCSLuaFile()
end

player_manager.AddValidModel("Jump Force - Ryuk", "models/konnie/jumpforce/ryuk.mdl")
player_manager.AddValidHands( "Jump Force - Ryuk", "models/weapons/arms/v_arms_ryuk.mdl", 0, "00000000" )

local Category = "Jump Force"

local function AddNPC( t, class )
list.Set( "NPC", class or t.Class, t )
end

AddNPC( {
Name = "Ryuk",
Class = "npc_citizen",
Category = Category,
Model = "models/konnie/jumpforce/ryuk_f.mdl",
KeyValues = { citizentype = CT_UNIQUE, SquadName = "jumpforceryuknpc" }
}, "npc_jumpforceryuk_f" )