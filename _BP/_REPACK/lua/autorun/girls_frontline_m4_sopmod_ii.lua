player_manager.AddValidModel( "M4 SOPMOD II", "models/player/dewobedil/girls_frontline/m4_sopmod_ii/default_p.mdl" );
player_manager.AddValidHands( "M4 SOPMOD II", "models/player/dewobedil/girls_frontline/m4_sopmod_ii/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Girls' Frontline"

local NPC =
{
	Name = "M4 SOPMOD II (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/girls_frontline/m4_sopmod_ii/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_girls_frontline_m4_sopmod_ii_f", NPC )

local NPC =
{
	Name = "M4 SOPMOD II (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/girls_frontline/m4_sopmod_ii/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_girls_frontline_m4_sopmod_ii_e", NPC )