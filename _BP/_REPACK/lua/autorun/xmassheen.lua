player_manager.AddValidModel( "XmasSheen",                     "models/XmasSheen/XmasSheen.mdl" )
list.Set( "PlayerOptionsModel",  "XmasSheen",                     "models/XmasSheen/XmasSheen.mdl" ) 
player_manager.AddValidHands( "XmasSheen", "Models/weapons/XmasSheenarms.mdl", 0, "00000000" )
--Add NPC
local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasSheen Ally", 
				Class = "npc_citizen",
				Model = "models/XmasSheen/XmasSheen.mdl",
				Health = "100",
				Weapons = { "weapon_smg1" },
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "xmassheen ally", NPC )

local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasSheen Hostile", 
				Class = "npc_combine_s",
				Model = "models/XmasSheen/XmasSheen.mdl",
				Health = "100",
				Weapons = { "weapon_smg1" },
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "xmassheen hostile", NPC )