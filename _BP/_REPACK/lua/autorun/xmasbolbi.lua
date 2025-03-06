player_manager.AddValidModel( "XmasBolbi",                     "models/XmasBolbi/XmasBolbi.mdl" )
list.Set( "PlayerOptionsModel",  "XmasBolbi",                     "models/XmasBolbi/XmasBolbi.mdl" ) 
player_manager.AddValidHands( "XmasBolbi", "models/weapons/XmasBolbiarms.mdl", 0, "00000000" )
--Add NPC
local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasBolbi Ally", 
				Class = "npc_citizen",
				Model = "models/XmasBolbi/XmasBolbi.mdl",
				Health = "100",
				Weapons = { "weapon_smg1" },
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "xmasbolbi ally", NPC )

local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasBolbi Hostile", 
				Class = "npc_combine_s",
				Model = "models/XmasBolbi/XmasBolbi.mdl",
				Health = "100",
				Weapons = { "weapon_smg1" },
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "xmasbolbi hostile", NPC )