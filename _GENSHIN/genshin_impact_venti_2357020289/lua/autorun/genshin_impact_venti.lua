--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Venti", "models/player/genshin_impact_venti.mdl" )
player_manager.AddValidHands( "Genshin Impact Venti", "models/arms/genshin_impact_venti_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Venti (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_venti_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_venti_friendly", NPC )

local NPC =
{
	Name = "Venti (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_venti_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_venti_enemy", NPC )
