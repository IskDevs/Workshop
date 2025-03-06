local Category = "Touhou"

list.Set( "PlayerOptionsModel", "Marisa Kirisame", "models/marisa_r/marisa_r_pm.mdl" )
player_manager.AddValidModel( "Marisa Kirisame", "models/marisa_r/marisa_r_pm.mdl" )
player_manager.AddValidHands( "Marisa Kirisame", "models/marisa_r/marisa_arms.mdl", 0, "0000000" )

local NPC =
{
	Name = "Marisa Kirisame (Friendly)",
	Class = "npc_citizen",
	Weapons = { "weapon_smg1" },
	KeyValues = { citizentype = 4 },
	Model = "models/marisa_r/marisa_r.mdl",
	Category = Category
}

list.Set( "NPC", "marisa_r_good", NPC )

local NPC =
{
	Name = "Marisa Kirisame (Enemy)",
	Class = "npc_combine_s",
	Weapons = { "weapon_smg1" },
	Numgrenades = "4",
	Model = "models/marisa_r/marisa_r.mdl",
	Category = Category
}

list.Set( "NPC", "marisa_r_bad", NPC )
