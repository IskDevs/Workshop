--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Kaedehara Kazuha", "models/player/genshin_impact_kaedehara_kazuha.mdl" )
player_manager.AddValidHands( "Genshin Impact Kaedehara Kazuha", "models/arms/genshin_impact_kaedehara_kazuha_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Kaedehara Kazuha (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_kaedehara_kazuha_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_kaedehara_kazuha_friendly", NPC )

local NPC =
{
	Name = "Kaedehara Kazuha (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_kaedehara_kazuha_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_kaedehara_kazuha_enemy", NPC )
