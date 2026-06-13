list.Set( "PlayerOptionsModel", "Liliya Olenyeva", "models/player/mmd/liliya/liliya_player.mdl" )
player_manager.AddValidModel( "Liliya Olenyeva", "models/player/mmd/liliya/liliya_player.mdl" )
player_manager.AddValidHands( "Liliya Olenyeva", "models/player/mmd/liliya/c_arms_liliya.mdl", 0, "0000000" )

local NPC = { 	Name = "Liliya Olenyeva", 
				Class = "npc_citizen",
				Weapons = { "weapon_ar2" },
				Model = "models/player/mmd/liliya/liliya_npc.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = "Honkai Impact 3"    }

list.Set( "NPC", "npc_c_liliya", NPC )

list.Set( "PlayerOptionsModel", "Rozaliya Olenyeva", "models/player/mmd/rozaliya/rozaliya_player.mdl" )
player_manager.AddValidModel( "Rozaliya Olenyeva", "models/player/mmd/rozaliya/rozaliya_player.mdl" )
player_manager.AddValidHands( "Rozaliya Olenyeva", "models/player/mmd/rozaliya/c_arms_rozaliya.mdl", 0, "0000000" )

local NPC = { 	Name = "Rozaliya Olenyeva", 
				Class = "npc_citizen",
				Weapons = { "weapon_shotgun" },
				Model = "models/player/mmd/rozaliya/rozaliya_npc.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = "Honkai Impact 3"    }

list.Set( "NPC", "npc_c_rozaliya", NPC )