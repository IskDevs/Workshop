local Category = "TheSPREEguys models"

local NPC = {	Name = "Big Chungus Bad",
				Class = "npc_combine_s",
				Model = "models/player/big/big_chungus.mdl",
				Health = "250",
				Category = Category }

list.Set( "NPC", "npc_big_chungus_bad", NPC )

local NPC =
{
	Name = "Big Chungus Good",
	Class = "npc_citizen",
	KeyValues =
	{
		citizentype = 4
	},
	Model = "models/player/big/big_chungus.mdl",
	Health = "250",
	Category = Category
}

list.Set( "NPC", "npc_big_chungus_good", NPC )

