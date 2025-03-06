--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Diluc", "models/player/genshin_impact_diluc.mdl" )
player_manager.AddValidHands( "Genshin Impact Diluc", "models/arms/genshin_impact_diluc_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Diluc (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_diluc_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_diluc_friendly", NPC )

local NPC =
{
	Name = "Diluc (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_diluc_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_diluc_enemy", NPC )
