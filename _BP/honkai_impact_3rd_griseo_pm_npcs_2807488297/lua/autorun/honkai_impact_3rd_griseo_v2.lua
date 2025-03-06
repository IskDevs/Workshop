player_manager.AddValidModel( "Honkai Impact 3rd Griseo V2", "models/Griseo_V2/honkai_impact/rstar/Griseo_V2/Griseo_V2.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Griseo V2", "models/Griseo_V2/honkai_impact/rstar/Griseo_V2/arms/Griseo_V2_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Griseo V2 (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Griseo_V2/honkai_impact/rstar/Griseo_V2/Griseo_V2_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Griseo_V2_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Griseo V2 (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Griseo_V2/honkai_impact/rstar/Griseo_V2/Griseo_V2_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Griseo_V2_enemy", NPC )