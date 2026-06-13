player_manager.AddValidModel( "Murasame", "models/player/dewobedil/kancolle/murasame/default_p.mdl" );
player_manager.AddValidHands( "Murasame", "models/player/dewobedil/kancolle/murasame/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Kancolle"

local NPC =
{
	Name = "Murasame (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/kancolle/murasame/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_murasame_f", NPC )

local NPC =
{
	Name = "Murasame (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/kancolle/murasame/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_murasame_e", NPC )