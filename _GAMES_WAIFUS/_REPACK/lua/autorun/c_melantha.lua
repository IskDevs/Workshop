list.Set( "PlayerOptionsModel", "Melantha", "models/player/mmd/melantha/melantha_player.mdl" )
player_manager.AddValidModel( "Melantha", "models/player/mmd/melantha/melantha_player.mdl" )
player_manager.AddValidHands( "Melantha", "models/player/mmd/melantha/c_arms_melantha.mdl", 0, "0000000" )

local NPC = { 	Name = "Melantha", 
				Class = "npc_citizen",
				Weapons = { "weapon_stunstick" },
				Model = "models/player/mmd/melantha/melantha_npc.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = "Arknights"    }

list.Set( "NPC", "npc_c_melantha", NPC )