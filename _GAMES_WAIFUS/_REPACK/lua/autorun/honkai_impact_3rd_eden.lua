player_manager.AddValidModel( "Honkai Impact 3rd Eden", "models/Eden/honkai_impact/rstar/Eden/Eden.mdl" );
player_manager.AddValidHands( "Honkai Impact 3rd Eden", "models/Eden/honkai_impact/rstar/Eden/arms/Eden_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Honkai Impact 3rd Eden (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Eden/honkai_impact/rstar/Eden/Eden_npc.mdl",
	Category = Category
}

list.Set( "NPC", "honkai_impact_Eden_friendly", NPC )



local NPC =
{
	Name = "Honkai Impact 3rd Eden (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Eden/honkai_impact/rstar/Eden/Eden_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "honkai_impact_Eden_enemy", NPC )