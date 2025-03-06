player_manager.AddValidModel( "Azur Lane Le Malin", "models/Le_Malin/Azur_Lane/rstar/Le_Malin/Le_Malin.mdl" );
player_manager.AddValidHands( "Azur Lane Le Malin", "models/Le_Malin/Azur_Lane/rstar/Le_Malin/arms/Le_Malin_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Le Malin (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Le_Malin/Azur_Lane/rstar/Le_Malin/Le_Malin_npc.mdl",
	Category = Category
}

list.Set( "NPC", "Le_Malin_friendly", NPC )



local NPC =
{
	Name = "Le Malin (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Le_Malin/Azur_Lane/rstar/Le_Malin/Le_Malin_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "Le_Malin_enemy", NPC )
