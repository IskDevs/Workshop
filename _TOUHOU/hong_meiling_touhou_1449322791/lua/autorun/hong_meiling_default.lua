player_manager.AddValidModel( "Hong Meiling", "models/player/dewobedil/touhou/hong_meiling/default_p.mdl" );
player_manager.AddValidHands( "Hong Meiling", "models/player/dewobedil/touhou/hong_meiling/c_arms/default_p.mdl", 0, "00000000" )

local Category = "Touhou"

local NPC =
{
	Name = "Hong Meiling (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/player/dewobedil/touhou/hong_meiling/default_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_hong_meiling_f", NPC )

local NPC =
{
	Name = "Hong Meiling (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/player/dewobedil/touhou/hong_meiling/default_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_hong_meiling_e", NPC )

if SERVER then
	resource.AddWorkshop("1449322791")
end