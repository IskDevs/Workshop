player_manager.AddValidModel( "Qiqi", "models/cyanblue/genshin_impact/qiqi/qiqi.mdl" );
player_manager.AddValidHands( "Qiqi", "models/cyanblue/genshin_impact/qiqi/arms/qiqi.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Qiqi",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/genshin_impact/qiqi/npc/qiqi.mdl",
	Category = Category
}

list.Set( "NPC", "npc_qiqi", NPC )

