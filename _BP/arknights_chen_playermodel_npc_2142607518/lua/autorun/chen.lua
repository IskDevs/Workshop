player_manager.AddValidModel( "Arknights - Chen", "models/chen/arknights/clancy/chen.mdl" );
player_manager.AddValidHands( "Arknights - Chen", "models/chen/arknights/clancy/chen_arm.mdl", 0, "00000000" )

local Category = "Arknights - Chen"

local NPC =
{
	Name = "Chen (Arknights) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/chen/arknights/clancy/chen_friendly.mdl",
	Category = Category
}

list.Set( "NPC", "chen_friendly", NPC )

local NPC =
{
	Name = "Chen (Arknights) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/chen/arknights/clancy/chen_enemy.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "chen_enemy", NPC )