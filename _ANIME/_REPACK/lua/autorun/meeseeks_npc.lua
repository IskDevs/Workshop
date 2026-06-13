local Category = "Humans + Resistance"

local NPC = {   Name = "meeseeks_ally", 
				Class = "npc_citizen",
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_smg1" },
				Model = "models/player/meeseeks/meeseeks.mdl", 
				Health = "100", 
				Category = Category }
                               
list.Set( "NPC", "npc_meeseeks_ally", NPC ) 

local NPC = {   Name = "meeseeks_hostile", 
				Class = "npc_combine_s",
				Weapons = { "weapon_smg1" },
				Model = "models/player/meeseeks/meeseeks.mdl", 
				Health = "100", 
				Category = Category }
                               
list.Set( "NPC", "npc_meeseeks_hostile", NPC ) 
//end