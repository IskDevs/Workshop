player_manager.AddValidModel( "Paimon", "models/cyanblue/genshin_impact/paimon/paimon.mdl" );
player_manager.AddValidHands( "Paimon", "models/cyanblue/genshin_impact/paimon/arms/paimon.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Paimon",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/genshin_impact/paimon/npc/paimon.mdl",
	Category = Category
}

list.Set( "NPC", "npc_paimon", NPC )

