player_manager.AddValidModel( "Xana", "models/cyanblue/genshin_impact/mellusines/xana/xana.mdl" );
player_manager.AddValidHands( "Xana", "models/cyanblue/genshin_impact/mellusines/xana/arms/xana.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Xana",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/genshin_impact/mellusines/xana/npc/xana.mdl",
	Category = Category
}

list.Set( "NPC", "npc_xana_genshin_impact_mellusine", NPC )

