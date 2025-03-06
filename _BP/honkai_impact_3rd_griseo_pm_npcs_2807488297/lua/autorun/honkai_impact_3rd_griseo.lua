player_manager.AddValidModel( "Honkai Impact 3rd Griseo", "models/Griseo/honkai_impact/rstar/Griseo/Griseo.mdl" );

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Griseo (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Griseo/honkai_impact/rstar/Griseo/Griseo_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Griseo_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Griseo (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Griseo/honkai_impact/rstar/Griseo/Griseo_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Griseo_enemy", NPC )