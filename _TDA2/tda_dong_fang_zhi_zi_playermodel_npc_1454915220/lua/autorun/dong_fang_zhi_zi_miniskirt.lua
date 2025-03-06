--Add Playermodel
player_manager.AddValidModel( "TDA Dong Fang Zhi Zi", "models/player/dong_fang_zhi_zi.mdl" )
player_manager.AddValidHands( "TDA Dong Fang Zhi Zi", "models/arms/dong_fang_zhi_zi_arms.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "Dong Fang Zhi Zi (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/dong_fang_zhi_zi_npc.mdl",
	Category = Category
}

list.Set( "NPC", "dong_fang_zhi_zi_friendly", NPC )

local NPC =
{
	Name = "Dong Fang Zhi Zi (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/dong_fang_zhi_zi_npc.mdl",
	Category = Category
}

list.Set( "NPC", "dong_fang_zhi_zi_enemy", NPC )
