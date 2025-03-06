player_manager.AddValidModel( "GirlFrontline G41", "models/g41/girls_frontline/clancy/g41/g41.mdl" );
player_manager.AddValidHands( "GirlFrontline G41", "models/g41/girls_frontline/clancy/g41/arms/g14_arms.mdl", 0, "00000000" )

local Category = "GirlFrontline G41"

local NPC =
{
	Name = "GirlFrontline G41 (GirlsFronline) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/g41/girls_frontline/clancy/g41/g41_npc.mdl",
	Category = Category
}

list.Set( "NPC", "g14_friendly", NPC )

local NPC =
{
	Name = "GirlFrontline G41 (GirlsFronline) (Friendly)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/g41/girls_frontline/clancy/g41/g41_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "g14_Enemy", NPC )
