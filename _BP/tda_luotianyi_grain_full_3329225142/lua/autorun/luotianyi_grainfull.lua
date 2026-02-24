player_manager.AddValidModel( "TDA_LuoTianyi_GrainFull", "models/luotianyi_grainfull/luotianyi_grainfull.mdl" )
player_manager.AddValidHands( "TDA_LuoTianyi_GrainFull", "models/arms/luotianyi_grainfull_v_arms.mdl", 0, "00000000" )

local Category = "TDA_LuoTianyi_GrainFull"

local NPC =
{
	Name = "TDA_LuoTianyi_GrainFull (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/luotianyi_grainfull/luotianyi_grainfull_npc.mdl",
	Category = Category
}

list.Set( "NPC", "TDA_LuoTianyi_GrainFull_Friendly", NPC )

local NPC =
{
	Name = "TDA_LuoTianyi_GrainFull (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/luotianyi_grainfull/luotianyi_grainfull_npc.mdl",
	Category = Category
}

list.Set( "NPC", "TDA_LuoTianyi_GrainFull_Enemy", NPC )