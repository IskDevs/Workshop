player_manager.AddValidModel( "Zetsune Miku (Maid)", "models/player/dewobedil/vocaloid/zetsune_miku/maid_p.mdl" );
player_manager.AddValidHands( "Zetsune Miku (Maid)", "models/player/dewobedil/vocaloid/zetsune_miku/c_arms/maid_p.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "Zetsune Miku (Maid) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/vocaloid/zetsune_miku/maid_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_zetsune_miku_maid_f", NPC )

local NPC =
{
	Name = "Zetsune Miku (Maid) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/vocaloid/zetsune_miku/maid_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_zetsune_miku_maid_e", NPC )