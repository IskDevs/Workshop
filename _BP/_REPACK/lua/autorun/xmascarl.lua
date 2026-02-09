player_manager.AddValidModel( "XmasCarl",                     "models/xmascarl/xmascarl.mdl" )
list.Set( "PlayerOptionsModel",  "XmasCarl",                     "models/xmascarl/xmascarl.mdl" ) 
player_manager.AddValidHands( "XmasCarl", "models/weapons/xmascarlarms.mdl", 0, "00000000" )
--Add NPC
local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasCarl Ally", 
				Class = "npc_citizen",
				Model = "models/xmascarl/xmascarl.mdl",
				Health = "100",
				Weapons = { "weapon_smg1" },
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "xmascarl ally", NPC )

local Category = "Jimmy Neutron NPCs"

local NPC = { 	Name = "XmasCarl Hostile", 
				Class = "npc_combine_s",
				Model = "models/xmascarl/xmascarl.mdl",
				Health = "100",
				Weapons = { "weapon_smg1" },
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "xmascarl hostile", NPC )