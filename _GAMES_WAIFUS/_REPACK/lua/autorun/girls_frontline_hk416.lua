player_manager.AddValidModel( "HK416", "models/player/dewobedil/girls_frontline/hk416/default_p.mdl" );
player_manager.AddValidHands( "HK416", "models/player/dewobedil/girls_frontline/hk416/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Girls' Frontline"

local NPC =
{
	Name = "HK416 (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/girls_frontline/hk416/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_girls_frontline_hk416_f", NPC )

local NPC =
{
	Name = "HK416 (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/girls_frontline/hk416/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_girls_frontline_hk416_e", NPC )