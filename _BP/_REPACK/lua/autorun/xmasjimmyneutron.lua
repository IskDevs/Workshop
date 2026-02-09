player_manager.AddValidModel( "XmasJimmyNeutron",                     "models/XmasJimmyNeutron/XmasJimmyNeutron.mdl" )
list.Set( "PlayerOptionsModel",  "XmasJimmyNeutron",                     "models/XmasJimmyNeutron/XmasJimmyNeutron.mdl" ) 
player_manager.AddValidHands( "XmasJimmyNeutron", "Models/weapons/XmasJimmyNeutron_arms.mdl", 0, "00000000" )
--Add NPC
local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasJimmy Ally", 
				Class = "npc_citizen",
				Model = "models/XmasJimmyNeutron/XmasJimmyNeutron.mdl",
				Health = "100",
				Weapons = { "weapon_smg1" },
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "xmasjimmy ally", NPC )

local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasJimmy Hostile", 
				Class = "npc_combine_s",
				Model = "models/XmasJimmyNeutron/XmasJimmyNeutron.mdl",
				Health = "100",
				Weapons = { "weapon_smg1" },
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "xmasjimmy hostile", NPC )