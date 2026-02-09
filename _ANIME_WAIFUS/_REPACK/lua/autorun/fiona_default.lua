player_manager.AddValidModel( "Fiona", "models/player/dewobedil/vocaloid/fiona/default_p.mdl" );
player_manager.AddValidHands( "Fiona", "models/player/dewobedil/vocaloid/fiona/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "Fiona (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/vocaloid/fiona/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_fiona_default_f", NPC )

local NPC =
{
	Name = "Fiona (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/vocaloid/fiona/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_fiona_default_e", NPC )