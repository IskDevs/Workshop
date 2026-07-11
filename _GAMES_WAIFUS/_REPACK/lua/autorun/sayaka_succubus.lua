player_manager.AddValidModel( "Succubus Sayaka", "models/player/dewobedil/sayaka/succubus_p.mdl" );
player_manager.AddValidHands( "Succubus Sayaka", "models/player/dewobedil/sayaka/c_arms/succubus_p.mdl", 0, "00000000" )

local Category = "Succubus Sayaka"

local NPC =
{
	Name = "Succubus Sayaka (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/sayaka/succubus_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_sayaka_succubus_f", NPC )

local NPC =
{
	Name = "Succubus Sayaka (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/sayaka/succubus_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_sayaka_succubus_e", NPC )