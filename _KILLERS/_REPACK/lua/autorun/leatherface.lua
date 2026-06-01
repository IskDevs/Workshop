if SERVER then
AddCSLuaFile()
end

player_manager.AddValidModel("Leatherface", "models/models/konnie/leatherface/leatherface.mdl")
player_manager.AddValidHands( "Leatherface", "models/weapons/arms/v_arms_leatherface.mdl", 0, "00000000" )

local Category = "Dead by Daylight"

local function AddNPC( t, class )
list.Set( "NPC", class or t.Class, t )
end

AddNPC( {
Name = "Leatherface",
Class = "npc_citizen",
Category = Category,
Model = "models/models/konnie/leatherface/leatherface_f.mdl",
KeyValues = { citizentype = CT_UNIQUE, SquadName = "leatherfacenpc" }
}, "npc_leatherfacenpc_f" )