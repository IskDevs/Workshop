player_manager.AddValidModel( "Eula", "models/cyanblue/genshin_impact/eula/eula.mdl" );
player_manager.AddValidHands( "Eula", "models/cyanblue/genshin_impact/eula/arms/eula.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Eula",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/genshin_impact/eula/npc/eula.mdl",
	Category = Category
}

list.Set( "NPC", "npc_eula_genshin", NPC )

