player_manager.AddValidModel( "Honkai Impact 3rd Herrscher of Sentience (Summer Outfit)", "models/Herrscher_of_Sentience_Summer/honkai_impact/rstar/Herrscher_of_Sentience_Summer/Herrscher_of_Sentience_Summer.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Herrscher of Sentience (Summer Outfit)", "models/Herrscher_of_Sentience_Summer/honkai_impact/rstar/Herrscher_of_Sentience_Summer/arms/Herrscher_of_Sentience_Summer_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Herrscher of Sentience (Summer Outfit) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Herrscher_of_Sentience_Summer/honkai_impact/rstar/Herrscher_of_Sentience_Summer/Herrscher_of_Sentience_Summer_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Herrscher_of_Sentience_Summer_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Herrscher of Sentience (Summer Outfit) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Herrscher_of_Sentience_Summer/honkai_impact/rstar/Herrscher_of_Sentience_Summer/Herrscher_of_Sentience_Summer_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Herrscher_of_Sentience_Summer_enemy", NPC )