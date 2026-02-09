local Category = "Humans + Resistance"

local NPC = {   Name = "rick_ally", 
				Class = "npc_citizen",
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_smg1" },
				Model = "models/player/rick/rick.mdl", 
				Health = "100", 
				Category = Category }
                               
list.Set( "NPC", "npc_rick_ally", NPC ) 

local NPC = {   Name = "rick_hostile", 
				Class = "npc_combine_s",
				Weapons = { "weapon_smg1" },
				Model = "models/player/rick/rick.mdl", 
				Health = "100", 
				Category = Category }
                               
list.Set( "NPC", "npc_rick_hostile", NPC ) 
//end