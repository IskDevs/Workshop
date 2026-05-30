player_manager.AddValidModel( "Azuma", "models/azuma/luvvy/azuma.mdl" );
player_manager.AddValidHands( "Azuma", "models/azuma/luvvy/arms/azuma_arms.mdl", 0, "00000000" )

local Category = "Azuma"

local NPC =
{
	Name = "Azuma (Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/azuma/luvvy/azuma_npc.mdl",
	Category = Category
}

list.Set( "NPC", "azuma_friendly", NPC )

local NPC =
{
	Name = "Azuma (Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/azuma/luvvy/azuma_npc.mdl",
	Weapons = { "weapon_pistol" },
	Category = Category
}

list.Set( "NPC", "azuma_enemy", NPC )