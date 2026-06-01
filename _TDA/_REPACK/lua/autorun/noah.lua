player_manager.AddValidModel( "Noah", "models/player/dewobedil/noah/default_p.mdl" );
player_manager.AddValidHands( "Noah", "models/player/dewobedil/noah/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Noah"

local NPC =
{
	Name = "Noah (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/noah/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_noah_default_f", NPC )

local NPC =
{
	Name = "Noah (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/noah/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_noah_default_e", NPC )