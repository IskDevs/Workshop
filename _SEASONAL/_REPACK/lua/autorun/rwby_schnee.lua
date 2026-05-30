player_manager.AddValidModel( "RWBY Schnee", "models/Schnee/RWBY/rstar/Schnee/Schnee.mdl" );
player_manager.AddValidHands( "RWBY Schnee", "models/Schnee/RWBY/rstar/Schnee/arms/Schnee_arms.mdl", 0, "00000000" )

local Category = "R. Star's Models"


local NPC =
{
	Name = "RWBY Schnee (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Schnee/RWBY/rstar/Schnee/Schnee_npc.mdl",
	Category = Category
}

list.Set( "NPC", "RWBY_Schnee_friendly", NPC )



local NPC =
{
	Name = "RWBY Schnee (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Schnee/RWBY/rstar/Schnee/Schnee_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "RWBY_Schnee_enemy", NPC )