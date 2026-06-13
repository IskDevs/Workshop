player_manager.AddValidModel( "Honkai Impact 3rd Mobius", "models/Mobius/honkai_impact/rstar/Mobius/Mobius.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Mobius", "models/Mobius/honkai_impact/rstar/Mobius/arms/Mobius_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Mobius (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Mobius/honkai_impact/rstar/Mobius/Mobius_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Mobius_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Mobius (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Mobius/honkai_impact/rstar/Mobius/Mobius_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Mobius_enemy", NPC )