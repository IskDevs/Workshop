--Add Playermodel
player_manager.AddValidModel( "Closers Seulbi (Sylvi) Lee Union Agent", "models/player/closers_sylvi_union_agent.mdl" )
player_manager.AddValidHands( "Closers Seulbi (Sylvi) Lee Union Agent", "models/arms/closers_sylvi_union_agent_arms.mdl", 0, "00000000" )

local Category = "Closers"

local NPC =
{
	Name = "Seulbi (Sylvi) Lee Union Agent (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/npc/closers_sylvi_union_agent_npc.mdl",
	Category = Category
}

list.Set( "NPC", "closers_sylvi_union_agent_friendly", NPC )

local NPC =
{
	Name = "Seulbi (Sylvi) Lee Union Agent (Enemy)",
	Class = "npc_combine_s",
	Numgrenades = "4",
	Model = "models/npc/closers_sylvi_union_agent_npc.mdl",
	Category = Category
}

list.Set( "NPC", "closers_sylvi_union_agent_enemy", NPC )
