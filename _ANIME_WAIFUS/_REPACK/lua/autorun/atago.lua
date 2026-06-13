player_manager.AddValidModel( "Azur Lane Crosswave - Atago", "models/atago/azur_lane/clancy/atago.mdl" );
player_manager.AddValidHands( "Azur Lane Crosswave - Atago", "models/atago/azur_lane/clancy/arms/atago_arms.mdl", 0, "00000000" )

local Category = "Azur Lane Crosswave - Atago"

local NPC =
{
	Name = "Atago (Azur Lane Crosswave) (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/atago/azur_lane/clancy/atago_npc.mdl",
	Category = Category
}

list.Set( "NPC", "atago_friendly", NPC )

local NPC =
{
	Name = "Atago (Azur Lane Crosswave) (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/atago/azur_lane/clancy/atago_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "atago_enemy", NPC )