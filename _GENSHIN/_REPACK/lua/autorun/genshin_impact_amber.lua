--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Amber", "models/player/genshin_impact_amber.mdl" )
player_manager.AddValidHands( "Genshin Impact Amber", "models/arms/genshin_impact_amber_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Amber (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_amber_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_amber_friendly", NPC )

local NPC =
{
	Name = "Amber (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_amber_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_amber_enemy", NPC )
