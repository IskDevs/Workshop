--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Noelle", "models/player/genshin_impact_noelle.mdl" )
player_manager.AddValidHands( "Genshin Impact Noelle", "models/arms/genshin_impact_noelle_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Noelle (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_noelle_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_noelle_friendly", NPC )

local NPC =
{
	Name = "Noelle (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_noelle_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_noelle_enemy", NPC )
