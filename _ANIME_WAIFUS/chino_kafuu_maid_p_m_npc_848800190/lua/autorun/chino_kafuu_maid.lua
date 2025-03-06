player_manager.AddValidModel( "Chino Kafuu (Maid)", "models/player/dewobedil/chino_kafuu/maid_p.mdl" );
player_manager.AddValidHands( "Chino Kafuu (Maid)", "models/player/dewobedil/chino_kafuu/c_arms/maid_p.mdl", 0, "00000000" )

local Category = "Is the Order a Rabbit?"

local NPC =
{
	Name = "Chino Kafuu (Maid)(Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/chino_kafuu/maid_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_chino_kafuu_maid_f", NPC )

local NPC =
{
	Name = "Chino Kafuu (Maid)(Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/chino_kafuu/maid_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_chino_kafuu_maid_e", NPC )