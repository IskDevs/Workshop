--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Yoimiya", "models/player/genshin_impact_yoimiya.mdl" )
player_manager.AddValidHands( "Genshin Impact Yoimiya", "models/arms/genshin_impact_yoimiya_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Yoimiya (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_yoimiya_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_yoimiya_friendly", NPC )

local NPC =
{
	Name = "Yoimiya (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_yoimiya_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_yoimiya_enemy", NPC )
