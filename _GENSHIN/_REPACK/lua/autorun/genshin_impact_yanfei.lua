--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Yanfei", "models/player/genshin_impact_yanfei.mdl" )
player_manager.AddValidHands( "Genshin Impact Yanfei", "models/arms/genshin_impact_yanfei_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Yanfei (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_yanfei_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_yanfei_friendly", NPC )

local NPC =
{
	Name = "Yanfei (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_yanfei_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_yanfei_enemy", NPC )
