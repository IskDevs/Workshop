player_manager.AddValidModel( "Arataki Itto", "models/messa/itto/itto.mdl" );
player_manager.AddValidHands( "Arataki Itto", "models/messa/itto/arms/itto.mdl", 0, "00000000" )

local Category = "Messa | Playermodel"

local NPC =
{
	Name = "Arataki Itto",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/messa/itto/npc/itto.mdl",
	Category = Category
}

list.Set( "NPC", "npc_messa_aratakiitto", NPC )