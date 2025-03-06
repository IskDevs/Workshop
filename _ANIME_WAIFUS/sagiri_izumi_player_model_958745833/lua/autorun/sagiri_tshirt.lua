player_manager.AddValidModel( "Sagiri (T-Shirt)", "models/player/dewobedil/eromanga_sensei/sagiri/tshirt_p.mdl" );
player_manager.AddValidHands( "Sagiri (T-Shirt)", "models/player/dewobedil/eromanga_sensei/sagiri/c_arms/tshirt_p.mdl", 0, "00000000" )

local Category = "Eromanga Sensei"

local NPC =
{
	Name = "Sagiri (T-Shirt) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/eromanga_sensei/sagiri/tshirt_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_sagiri_tshirt_f", NPC )

local NPC =
{
	Name = "Sagiri (T-Shirt) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/eromanga_sensei/sagiri/tshirt_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_sagiri_tshirt_e", NPC )