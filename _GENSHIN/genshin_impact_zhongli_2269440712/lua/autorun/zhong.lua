player_manager.AddValidModel( "Zhongli", "models/cyanblue/genshin_impact/zhongli/zhongli.mdl" );
player_manager.AddValidHands( "Zhongli", "models/cyanblue/genshin_impact/zhongli/arms/zhongli.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Zhongli",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 3 },
	Model = "models/cyanblue/genshin_impact/zhongli/npc/zhongli.mdl",
	Category = Category
}

list.Set( "NPC", "npc_zhongli", NPC )

