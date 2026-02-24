--Add Playermodel
player_manager.AddValidModel( "Closers Seulbi (Sylvi) Lee Maid", "models/player/closers_sylvi_maid.mdl" )
player_manager.AddValidHands( "Closers Seulbi (Sylvi) Lee Maid", "models/arms/closers_sylvi_maid_arms.mdl", 0, "00000000" )

local Category = "Closers"

local NPC =
{
	Name = "Seulbi (Sylvi) Lee Maid (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/closers_sylvi_maid_npc.mdl",
	Category = Category
}

list.Set( "NPC", "closers_sylvi_maid_friendly", NPC )

local NPC =
{
	Name = "Seulbi (Sylvi) Lee Maid (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/closers_sylvi_maid_npc.mdl",
	Category = Category
}

list.Set( "NPC", "closers_sylvi_maid_enemy", NPC )
