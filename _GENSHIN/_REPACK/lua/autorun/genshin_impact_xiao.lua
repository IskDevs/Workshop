--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Xiao", "models/player/genshin_impact_xiao.mdl" )
player_manager.AddValidHands( "Genshin Impact Xiao", "models/arms/genshin_impact_xiao_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Xiao (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_xiao_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_xiao_friendly", NPC )

local NPC =
{
	Name = "Xiao (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_xiao_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_xiao_enemy", NPC )
