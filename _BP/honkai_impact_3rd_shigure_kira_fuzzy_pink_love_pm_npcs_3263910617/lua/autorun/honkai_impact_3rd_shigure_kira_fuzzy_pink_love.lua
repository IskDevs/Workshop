player_manager.AddValidModel( "Honkai Impact 3rd Shigure Kira (Fuzzy Pink Love)", "models/Shigure_kira_Fuzzy_Pink_Love/honkai_impact/rstar/Shigure_kira_Fuzzy_Pink_Love/Shigure_kira_Fuzzy_Pink_Love.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Shigure Kira (Fuzzy Pink Love)", "models/Shigure_kira_Fuzzy_Pink_Love/honkai_impact/rstar/Shigure_kira_Fuzzy_Pink_Love/arms/fzp_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Shigure Kira (Fuzzy Pink Love) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Shigure_kira_Fuzzy_Pink_Love/honkai_impact/rstar/Shigure_kira_Fuzzy_Pink_Love/Shigure_kira_Fuzzy_Pink_Love_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Shigure_kira_Fuzzy_Pink_Love_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Shigure Kira (Fuzzy Pink Love) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Shigure_kira_Fuzzy_Pink_Love/honkai_impact/rstar/Shigure_kira_Fuzzy_Pink_Love/Shigure_kira_Fuzzy_Pink_Love_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Shigure_kira_Fuzzy_Pink_Love_enemy", NPC )