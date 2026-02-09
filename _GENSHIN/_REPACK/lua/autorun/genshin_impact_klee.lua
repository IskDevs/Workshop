--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Klee", "models/Klee/genshin_impact/rstar/Klee/Klee.mdl" )
player_manager.AddValidHands( "Genshin Impact Klee", "models/Klee/genshin_impact/rstar/Klee/arms/Klee_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Klee (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/Klee/genshin_impact/rstar/Klee/Klee_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_klee_friendly", NPC )

local NPC =
{
	Name = "Klee (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/Klee/genshin_impact/rstar/Klee/Klee_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_klee_enemy", NPC )
