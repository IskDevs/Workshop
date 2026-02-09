--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Kuki Shinobu", "models/player/genshin_impact_kuki_shinobu.mdl" )
player_manager.AddValidHands( "Genshin Impact Kuki Shinobu", "models/arms/genshin_impact_kuki_shinobu_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Kuki Shinobu (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_kuki_shinobu_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_kuki_shinobu_friendly", NPC )

local NPC =
{
	Name = "Kuki Shinobu (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_kuki_shinobu_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_kuki_shinobu_enemy", NPC )
