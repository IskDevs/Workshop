player_manager.AddValidModel( "Honkai Impact 3rd Durandal", "models/Durandal/honkai_impact/rstar/Durandal/Durandal.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Durandal", "models/Durandal/honkai_impact/rstar/Durandal/arms/Durandal_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Durandal (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Durandal/honkai_impact/rstar/Durandal/Durandal_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Durandal_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Durandal (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Durandal/honkai_impact/rstar/Durandal/Durandal_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Durandal_enemy", NPC )