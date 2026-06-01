list.Set( "PlayerOptionsModel", "Jeff the Killer", "models/Splinks/Jeff_The_Killer/Jeff.mdl" )
player_manager.AddValidModel( "Jeff the Killer", "models/Splinks/Jeff_The_Killer/Jeff.mdl" )
player_manager.AddValidHands( "Jeff the Killer", "models/Splinks/Jeff_The_Killer/Arms.mdl", 0, "00000000" )




--Add NPC
local Category = "Jeff the Killer"

local NPC = { 	Name = "Hostile Jeff The Killer", 
				Class = "npc_combine_s",
				Model = "models/Splinks/Jeff_The_Killer/Jeff.mdl",
				Health = "150",
				Squadname = "PLAGUE",
				Numgrenades = "4",
                                Category = Category    }

list.Set( "NPC", "Hostile_Jeff_the_Killer", NPC )

local NPC = { 	Name = "Friendly Jeff The Killer", 
				Class = "npc_citizen",
				Model = "models/Splinks/Jeff_The_Killer/Jeff.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "Friendly_Jeff_the_Killer", NPC )