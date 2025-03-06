--Add Playermodel
player_manager.AddValidModel( "TDA Lumiere Etoile Luka", "models/player/lumiere_etoile_luka.mdl" )
player_manager.AddValidHands( "TDA Lumiere Etoile Luka", "models/arms/lumiere_etoile_luka_arms.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC =
{
	Name = "TDA Lumiere Etoile Luka (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/lumiere_etoile_luka_npc.mdl",
	Category = Category
}

list.Set( "NPC", "lumiere_etoile_luka_f", NPC )

local NPC =
{
	Name = "TDA Lumiere Etoile Luka (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/lumiere_etoile_luka_npc.mdl",
	Category = Category
}

list.Set( "NPC", "lumiere_etoile_luka_e", NPC )