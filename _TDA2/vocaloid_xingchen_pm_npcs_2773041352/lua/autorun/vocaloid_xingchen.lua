player_manager.AddValidModel( "Vocaloid Xingchen", "models/Xingchen/Vocaloid/rstar/Xingchen/Xingchen.mdl" );
player_manager.AddValidHands( "Vocaloid Xingchen", "models/Xingchen/Vocaloid/rstar/Xingchen/arms/Xingchen_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Vocaloid Xingchen (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Xingchen/Vocaloid/rstar/Xingchen/Xingchen_npc.mdl",
	Category = Category
}

list.Set( "NPC", "Vocaloid_Xingchen_friendly", NPC )



local NPC =
{
	Name = "Vocaloid Xingchen (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Xingchen/Vocaloid/rstar/Xingchen/Xingchen_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "Vocaloid_Xingchen_enemy", NPC )