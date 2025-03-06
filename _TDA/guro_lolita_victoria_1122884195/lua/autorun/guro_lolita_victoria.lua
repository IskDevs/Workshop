player_manager.AddValidModel( "Guro Lolita Victoria", "models/player/dewobedil/guro/lolita_victoria/default_p.mdl" );
player_manager.AddValidHands( "Guro Lolita Victoria", "models/player/dewobedil/guro/lolita_victoria/c_arms/default_p.mdl", 0, "00000000" )

local Category = "dewobedil favorite Models"

local NPC =
{
	Name = "Guro Lolita Victoria (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/guro/lolita_victoria/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_guro_lolita_victoria_f", NPC )

local NPC =
{
	Name = "Guro Lolita Victoria (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/guro/lolita_victoria/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_guro_lolita_victoria_e", NPC )