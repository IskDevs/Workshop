local Category = "TheSPREEguys models"

local NPC = {	Name = "Pink Guy Bad",
				Class = "npc_combine_s",
				Model = "models/player/pink/pink_guy/pink_guy_npc.mdl",
				Health = "250",
				Category = Category }

list.Set( "NPC", "npc_pink_guy_bad", NPC )

local NPC =
{
	Name = "Pink Guy Good",
	Class = "npc_citizen",
	KeyValues =
	{
		citizentype = 4
	},
	Model = "models/player/pink/pink_guy/pink_guy_npc.mdl",
	Health = "250",
	Category = Category
}

list.Set( "NPC", "npc_pink_guy_good", NPC )

