player_manager.AddValidModel( "Honkai Impact 3rd Bronya (Silver_Wing)", "models/Bronya_Silver_Wing/honkai_impact/rstar/Bronya_Silver_Wing/Bronya_Silver_Wing.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Bronya (Silver_Wing)", "models/Bronya_Silver_Wing/honkai_impact/rstar/Bronya_Silver_Wing/arms/Bronya_Silver_Wing_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Bronya (Silver_Wing) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Bronya_Silver_Wing/honkai_impact/rstar/Bronya_Silver_Wing/Bronya_Silver_Wing_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Bronya_Silver_Wing_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Bronya (Silver_Wing) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Bronya_Silver_Wing/honkai_impact/rstar/Bronya_Silver_Wing/Bronya_Silver_Wing_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Bronya_Silver_Wing_enemy", NPC )