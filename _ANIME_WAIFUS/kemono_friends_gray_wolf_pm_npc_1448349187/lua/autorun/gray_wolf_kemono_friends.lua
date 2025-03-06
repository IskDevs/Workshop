player_manager.AddValidModel( "Gray Wolf", "models/kemono_friends/gray_wolf/gray_wolf_player.mdl" );
player_manager.AddValidHands( "Gray Wolf", "models/kemono_friends/gray_wolf/gray_wolf_arms.mdl", 0, "00000000" )

local Category = "Kemono Friends"

local NPC = { 	Name = "Gray Wolf - Friendly", 
				Class = "npc_citizen",
				Model = "models/kemono_friends/gray_wolf/gray_wolf_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_grey_wolf_f", NPC )

local Category = "Kemono Friends"

local NPC = { 	Name = "Gray Wolf - Hostile", 
				Class = "npc_combine_s",
				Model = "models/kemono_friends/gray_wolf/gray_wolf_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_grey_wolf_h", NPC )
