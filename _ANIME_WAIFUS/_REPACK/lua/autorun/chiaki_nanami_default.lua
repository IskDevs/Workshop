player_manager.AddValidModel( "Chiaki Nanami", "models/player/dewobedil/chiaki_nanami/default_p.mdl" );
player_manager.AddValidHands( "Chiaki Nanami", "models/player/dewobedil/chiaki_nanami/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Danganronpa"

local NPC =
{
	Name = "Chiaki Nanami (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/chiaki_nanami/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_chiaki_nanami_f", NPC )

local NPC =
{
	Name = "Chiaki Nanami (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/chiaki_nanami/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_chiaki_nanami_e", NPC )