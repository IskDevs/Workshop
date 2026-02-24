--Add Playermodel
player_manager.AddValidModel( "Closers Seulbi (Sylvi) Lee Swimsuit Wangsan", "models/player/closers_sylvi_swimsuit_wangsan.mdl" )
player_manager.AddValidHands( "Closers Seulbi (Sylvi) Lee Swimsuit Wangsan", "models/arms/closers_sylvi_swimsuit_wangsan_arms.mdl", 0, "00000000" )

local Category = "Closers"

local NPC =
{
	Name = "Seulbi (Sylvi) Lee Swimsuit Wangsan (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/closers_sylvi_swimsuit_wangsan_npc.mdl",
	Category = Category
}

list.Set( "NPC", "closers_sylvi_swimsuit_wangsan_friendly", NPC )

local NPC =
{
	Name = "Seulbi (Sylvi) Lee Swimsuit Wangsan (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/closers_sylvi_swimsuit_wangsan_npc.mdl",
	Category = Category
}

list.Set( "NPC", "closers_sylvi_swimsuit_wangsan_enemy", NPC )
