player_manager.AddValidModel( "Honkai: Star Rail Bronya", "models/Bronya/honkai_star_rail/rstar/Bronya/Bronya.mdl" );
player_manager.AddValidHands( "Honkai: Star Rail Bronya", "models/Bronya/honkai_star_rail/rstar/Bronya/arms/Bronya_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai: Star Rail Bronya (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Bronya/honkai_star_rail/rstar/Bronya/Bronya_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_star_rail_Bronya_friendly", NPC )



local NPC =
{
	Name = "Honkai: Star Rail Bronya (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Bronya/honkai_star_rail/rstar/Bronya/Bronya_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_star_rail_Bronya_enemy", NPC )