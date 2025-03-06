--Add Playermodel
player_manager.AddValidModel( "Piron MAYU", "models/player/piron_mayu.mdl" )
player_manager.AddValidHands( "Piron MAYU", "models/arms/piron_mayu_arms.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "MAYU (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/piron_mayu_npc.mdl",
	Category = Category
}

list.Set( "NPC", "piron_mayu_friendly", NPC )

local NPC =
{
	Name = "MAYU (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/piron_mayu_npc.mdl",
	Category = Category
}

list.Set( "NPC", "piron_mayu_enemy", NPC )
