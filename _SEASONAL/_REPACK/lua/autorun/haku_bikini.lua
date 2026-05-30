player_manager.AddValidModel( "Haku (Bikini)", "models/player/dewobedil/vocaloid/haku/bikini_p.mdl" );
player_manager.AddValidHands( "Haku (Bikini)", "models/player/dewobedil/vocaloid/haku/c_arms/bikini_p.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "Haku (Bikini) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/vocaloid/haku/bikini_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_haku_bikini_f", NPC )

local NPC =
{
	Name = "Haku (Bikini) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/vocaloid/haku/bikini_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_haku_bikini_e", NPC )