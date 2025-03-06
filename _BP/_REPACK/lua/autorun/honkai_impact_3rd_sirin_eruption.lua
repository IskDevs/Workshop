player_manager.AddValidModel( "Honkai Impact 3rd Sirin Eruption", "models/Sirin_Eruption/honkai_impact/rstar/Sirin_Eruption/Sirin_Eruption.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Sirin Eruption", "models/Sirin_Eruption/honkai_impact/rstar/Sirin_Eruption/arms/Sirin_Eruption_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Sirin Eruption (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Sirin_Eruption/honkai_impact/rstar/Sirin_Eruption/Sirin_Eruption_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Sirin_Eruption_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Sirin Eruption (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Sirin_Eruption/honkai_impact/rstar/Sirin_Eruption/Sirin_Eruption_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Sirin_Eruption_enemy", NPC )