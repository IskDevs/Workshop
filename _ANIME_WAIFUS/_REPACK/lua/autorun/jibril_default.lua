player_manager.AddValidModel( "Jibril", "models/player/dewobedil/no_game_no_life/jibril/default_p.mdl" );
player_manager.AddValidHands( "Jibril", "models/player/dewobedil/no_game_no_life/jibril/c_arms/default_p.mdl", 0, "00000000" )

local Category = "No Game No Life"

local NPC =
{
	Name = "Jibril (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/no_game_no_life/jibril/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_jibril_default_f", NPC )

local NPC =
{
	Name = "Jibril (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/no_game_no_life/jibril/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_jibril_default_e", NPC )