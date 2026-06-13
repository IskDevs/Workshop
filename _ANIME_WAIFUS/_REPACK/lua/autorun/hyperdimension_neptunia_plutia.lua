player_manager.AddValidModel( "Plutia (Hyperdimension Neptunia)", "models/player/dewobedil/hyperdimension_neptunia/plutia/default_p.mdl" );
player_manager.AddValidHands( "Plutia (Hyperdimension Neptunia)", "models/player/dewobedil/hyperdimension_neptunia/plutia/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Hyperdimension Neptunia"

local NPC =
{
	Name = "Plutia (Hyperdimension Neptunia)(Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/hyperdimension_neptunia/plutia/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_hyperdimension_neptunia_plutia_f", NPC )

local NPC =
{
	Name = "Plutia (Hyperdimension Neptunia)(Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/hyperdimension_neptunia/plutia/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_hyperdimension_neptunia_plutia_e", NPC )