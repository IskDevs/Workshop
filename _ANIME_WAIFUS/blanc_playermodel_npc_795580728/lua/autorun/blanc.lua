--Add Playermodel
player_manager.AddValidModel( "Blanc", "models/player/shi/Blanc.mdl" )
player_manager.AddValidHands( "Blanc", "models/weapons/Blanc_Arms.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Blanc",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/player/shi/Blanc_npc.mdl",
	Category = "Hyperdimension"
}

list.Set( "NPC", "npc_Blanc", NPC )
