--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Hilichurl", "models/player/genshin_impact_hilichurl.mdl" )
player_manager.AddValidHands( "Genshin Impact Hilichurl", "models/arms/genshin_impact_hilichurl_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Hilichurl (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_hilichurl_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_hilichurl_friendly", NPC )

local NPC =
{
	Name = "Hilichurl (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_hilichurl_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_hilichurl_enemy", NPC )
