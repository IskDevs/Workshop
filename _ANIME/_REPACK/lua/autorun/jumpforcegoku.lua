if SERVER then
	AddCSLuaFile()
end

player_manager.AddValidModel("Jump Force - Goku", "models/konnie/jumpforce/goku.mdl")

player_manager.AddValidModel("Jump Force - Goku Outfit", "models/konnie/jumpforce/goku_outfit.mdl")

local Category = "Jump Force"

local function AddNPC( t, class )
list.Set( "NPC", class or t.Class, t )
end

AddNPC( {
Name = "Goku",
Class = "npc_citizen",
Category = Category,
Model = "models/konnie/jumpforce/goku_f.mdl",
KeyValues = { citizentype = CT_UNIQUE, SquadName = "jumpforcegoku_f" }
}, "npc_jumpforcegoku_f" )

AddNPC( {
Name = "Goku Outfit",
Class = "npc_citizen",
Category = Category,
Model = "models/konnie/jumpforce/goku_outfit_f.mdl",
KeyValues = { citizentype = CT_UNIQUE, SquadName = "jumpforcegoku_outfit_f" }
}, "npc_jumpforcegoku_outfit_f" )