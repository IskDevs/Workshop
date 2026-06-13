player_manager.AddValidModel( "Sagiri (Pajama)", "models/player/dewobedil/eromanga_sensei/sagiri/pajama_p.mdl" );
player_manager.AddValidHands( "Sagiri (Pajama)", "models/player/dewobedil/eromanga_sensei/sagiri/c_arms/pajama_p.mdl", 0, "00000000" )

local Category = "Eromanga Sensei"

local NPC =
{
	Name = "Sagiri (Pajama) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/eromanga_sensei/sagiri/pajama_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_sagiri_pajama_f", NPC )

local NPC =
{
	Name = "Sagiri (Pajama) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/eromanga_sensei/sagiri/pajama_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_sagiri_pajama_e", NPC )