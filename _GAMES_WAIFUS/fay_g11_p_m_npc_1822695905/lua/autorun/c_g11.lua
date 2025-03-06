list.Set( "PlayerOptionsModel", "G11", "models/player/mmd/g11/g11_player.mdl" )
player_manager.AddValidModel( "G11", "models/player/mmd/g11/g11_player.mdl" )
player_manager.AddValidHands( "G11", "models/player/mmd/g11/c_arms_g11.mdl", 0, "0000000" )

local NPC = { 	Name = "G11", 
				Class = "npc_citizen",
				Weapons = { "weapon_ar2" },
				Model = "models/player/mmd/g11/g11_npc.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = "Girls' Frontline"    }

list.Set( "NPC", "npc_c_g11", NPC )
