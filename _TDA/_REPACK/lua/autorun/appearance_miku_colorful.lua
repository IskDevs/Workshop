player_manager.AddValidModel( "Appearance Miku (Colorful Drop)", "models/player/dewobedil/vocaloid/appearance_miku/colorful_p.mdl" );
player_manager.AddValidHands( "Appearance Miku (Colorful Drop)", "models/player/dewobedil/vocaloid/appearance_miku/c_arms/colorful_p.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "Appearance Miku (Colorful Drop) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/vocaloid/appearance_miku/colorful_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_appearance_miku_colorful_f", NPC )

local NPC =
{
	Name = "Appearance Miku (Colorful Drop) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/vocaloid/appearance_miku/colorful_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_appearance_miku_colorful_e", NPC )