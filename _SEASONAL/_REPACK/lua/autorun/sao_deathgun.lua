player_manager.AddValidModel( "Sword Art Online Deathgun", "models/Deathgun/Sword_Art_Online/rstar/Deathgun/Deathgun.mdl" );
player_manager.AddValidHands( "Sword Art Online Deathgun", "models/Deathgun/Sword_Art_Online/rstar/Deathgun/arms/Deathgun_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "Sword Art Online Deathgun (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Deathgun/Sword_Art_Online/rstar/Deathgun/Deathgun_npc.mdl",
	Category = Category
}

list.Set( "NPC", "Sword_Art_Online_Deathgun_friendly", NPC )



local NPC =
{
	Name = "Sword Art Online Deathgun (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Deathgun/Sword_Art_Online/rstar/Deathgun/Deathgun_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "Sword_Art_Online_Deathgun_enemy", NPC )