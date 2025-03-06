player_manager.AddValidModel( "Sagiri (Izumi)", "models/player/dewobedil/eromanga_sensei/sagiri/izumi_p.mdl" );
player_manager.AddValidHands( "Sagiri (Izumi)", "models/player/dewobedil/eromanga_sensei/sagiri/c_arms/izumi_p.mdl", 0, "00000000" )

local Category = "Eromanga Sensei"

local NPC =
{
	Name = "Sagiri (Izumi) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/eromanga_sensei/sagiri/izumi_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_sagiri_izumi_f", NPC )

local NPC =
{
	Name = "Sagiri (Izumi) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/eromanga_sensei/sagiri/izumi_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_sagiri_izumi_e", NPC )