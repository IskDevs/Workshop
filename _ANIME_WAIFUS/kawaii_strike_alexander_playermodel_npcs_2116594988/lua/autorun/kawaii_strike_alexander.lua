--Add Playermodel
player_manager.AddValidModel( "Kawaii Strike Alexander", "models/player/kawaii_strike_alexander.mdl" )
player_manager.AddValidHands( "Kawaii Strike Alexander", "models/arms/kawaii_strike_alexander_arms.mdl", 0, "00000000" )

local Category = "Kawaii Strike"

local NPC =
{
	Name = "Alexander (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/kawaii_strike_alexander_npc.mdl",
	Category = Category
}

list.Set( "NPC", "kawaii_strike_alexander_friendly", NPC )

local NPC =
{
	Name = "Alexander (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/kawaii_strike_alexander_npc.mdl",
	Category = Category
}

list.Set( "NPC", "kawaii_strike_alexander_enemy", NPC )
