player_manager.AddValidModel( "Honkai Impact 3rd Herrscher Elysia", "models/Herrscher_Elysia/honkai_impact/rstar/Herrscher_Elysia/Herrscher_Elysia.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Herrscher Elysia", "models/Herrscher_Elysia/honkai_impact/rstar/Herrscher_Elysia/arms/Herrscher_Elysia_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Herrscher Elysia (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Herrscher_Elysia/honkai_impact/rstar/Herrscher_Elysia/Herrscher_Elysia_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Herrscher_Elysia_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Herrscher Elysia (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Herrscher_Elysia/honkai_impact/rstar/Herrscher_Elysia/Herrscher_Elysia_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Herrscher_Elysia_enemy", NPC )