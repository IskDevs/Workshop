player_manager.AddValidModel( "Azur Lane Taihou", "models/Taihou/azur_lane/rstar/Taihou/Taihou.mdl" );
player_manager.AddValidHands( "Azur Lane Taihou", "models/Taihou/azur_lane/rstar/Taihou/arms/Taihou_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Azur Lane Taihou (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Taihou/azur_lane/rstar/Taihou/Taihou_npc.mdl",
	Category = Category
}

list.Set( "NPC", "Taihou_friendly", NPC )



local NPC =
{
	Name = "Azur Lane Taihou (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Taihou/azur_lane/rstar/Taihou/Taihou_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "Taihou_enemy", NPC )
