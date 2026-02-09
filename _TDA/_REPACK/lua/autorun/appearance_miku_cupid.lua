player_manager.AddValidModel( "Appearance Miku (Cupid)", "models/player/dewobedil/vocaloid/appearance_miku/cupid_p.mdl" );
player_manager.AddValidHands( "Appearance Miku (Cupid)", "models/player/dewobedil/vocaloid/appearance_miku/c_arms/cupid_p.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "Appearance Miku (Cupid)(Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/vocaloid/appearance_miku/cupid_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_appearance_miku_cupid_f", NPC )

local NPC =
{
	Name = "Appearance Miku (Cupid)(Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/vocaloid/appearance_miku/cupid_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_appearance_miku_cupid_e", NPC )