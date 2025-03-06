player_manager.AddValidModel( "Post Honkai Impact Odyssey Carolle Pepper", "models/carolle_pepper/honkai_impact/rstar/carolle_pepper/carolle_pepper.mdl" );
player_manager.AddValidHands( "Post Honkai Impact Odyssey Carolle Pepper", "models/carolle_pepper/honkai_impact/rstar/carolle_pepper/arms/carolle_pepper_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Post Honkai Impact Odyssey Carolle Pepper (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/carolle_pepper/honkai_impact/rstar/carolle_pepper/carolle_pepper_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_carolle_pepper_friendly", NPC )



local NPC =
{
	Name = "Post Honkai Impact Odyssey Carolle Pepper (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/carolle_pepper/honkai_impact/rstar/carolle_pepper/carolle_pepper_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_carolle_pepper_enemy", NPC )