player_manager.AddValidModel( "Baal", "models/cyanblue/genshin_impact/baal/baal.mdl" );
player_manager.AddValidHands( "Baal", "models/cyanblue/genshin_impact/baal/arms/baal.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Baal",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/genshin_impact/baal/npc/baal.mdl",
	Category = Category
}

list.Set( "NPC", "npc_baal_genshin", NPC )

