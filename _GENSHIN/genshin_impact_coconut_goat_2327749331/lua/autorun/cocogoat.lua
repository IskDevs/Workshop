player_manager.AddValidModel( "Ganyu", "models/cyanblue/genshin_impact/ganyu/ganyu.mdl" );
player_manager.AddValidHands( "Ganyu", "models/cyanblue/genshin_impact/ganyu/arms/ganyu.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Ganyu",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/genshin_impact/ganyu/npc/ganyu.mdl",
	Category = Category
}

list.Set( "NPC", "npc_ganyu_genshin", NPC )

