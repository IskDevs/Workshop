--Add Playermodel
player_manager.AddValidModel( "Closers Seulbi (Sylvi) Lee", "models/player/closers_sylvi.mdl" )
player_manager.AddValidHands( "Closers Seulbi (Sylvi) Lee", "models/arms/closers_sylvi_arms.mdl", 0, "00000000" )

local Category = "Closers"

local NPC =
{
	Name = "Seulbi (Sylvi) Lee (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/closers_sylvi_npc.mdl",
	Category = Category
}

list.Set( "NPC", "closers_sylvi_friendly", NPC )

local NPC =
{
	Name = "Seulbi (Sylvi) Lee (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/closers_sylvi_npc.mdl",
	Category = Category
}

list.Set( "NPC", "closers_sylvi_enemy", NPC )
