player_manager.AddValidModel( "Shimakaze", "models/player/dewobedil/kancolle/shimakaze/default_p.mdl" );
player_manager.AddValidHands( "Shimakaze", "models/player/dewobedil/kancolle/shimakaze/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Kancolle"

local NPC =
{
	Name = "Shimakaze (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/kancolle/shimakaze/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_shimakaze_f", NPC )

local NPC =
{
	Name = "Shimakaze (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/kancolle/shimakaze/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_shimakaze_e", NPC )