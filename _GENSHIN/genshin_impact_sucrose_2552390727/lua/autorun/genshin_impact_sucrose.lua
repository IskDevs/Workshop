--Add Playermodel
player_manager.AddValidModel( "Genshin Impact Sucrose", "models/player/genshin_impact_sucrose.mdl" )
player_manager.AddValidHands( "Genshin Impact Sucrose", "models/arms/genshin_impact_sucrose_arms.mdl", 0, "00000000" )

local Category = "Genshin Impact"

local NPC =
{
	Name = "Sucrose (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/genshin_impact_sucrose_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_sucrose_friendly", NPC )

local NPC =
{
	Name = "Sucrose (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/genshin_impact_sucrose_npc.mdl",
	Category = Category
}

list.Set( "NPC", "genshin_impact_sucrose_enemy", NPC )
