player_manager.AddValidModel( "LuoTianyi_Chinese_Dress", "models/luotianyi_chinese_dress/luotianyi_chinese_dress.mdl" )
player_manager.AddValidHands( "LuoTianyi_Chinese_Dress", "models/arms/luotianyi_chinese_dress_v_arms.mdl", 0, "00000000" )

local Category = "LuoTianyi_Chinese_Dress"

local NPC =
{
	Name = "LuoTianyi_Chinese_Dress (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/luotianyi_chinese_dress/luotianyi_chinese_dress_npc.mdl",
	Category = Category
}

list.Set( "NPC", "LuoTianyi_Chinese_Dress_Friendly", NPC )

local NPC =
{
	Name = "LuoTianyi_Chinese_Dress (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/luotianyi_chinese_dress/luotianyi_chinese_dress_npc.mdl",
	Category = Category
}

list.Set( "NPC", "LuoTianyi_Chinese_Dress_Enemy", NPC )