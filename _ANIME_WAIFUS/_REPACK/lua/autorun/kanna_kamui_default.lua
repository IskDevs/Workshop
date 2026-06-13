player_manager.AddValidModel( "Kanna Kamui", "models/player/dewobedil/maid_dragon/kanna/default_p.mdl" );
player_manager.AddValidHands( "Kanna Kamui", "models/player/dewobedil/maid_dragon/kanna/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Maid Dragon"

local NPC =
{
	Name = "Kanna Kamui(Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/maid_dragon/kanna/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_kanna_kamui_default_f", NPC )

local NPC =
{
	Name = "Kanna Kamui(Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/maid_dragon/kanna/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_kanna_kamui_default_e", NPC )