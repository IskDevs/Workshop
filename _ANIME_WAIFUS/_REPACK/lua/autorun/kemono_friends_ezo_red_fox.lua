-- Made by a super duper cool person named ArachnitCZ contact here: http://steamcommunity.com/profiles/76561198015206549/

player_manager.AddValidModel( "Ezo Red Fox", "models/kemono_friends/ezo_red_fox/ezo_red_fox_player.mdl" );
player_manager.AddValidHands( "Ezo Red Fox", "models/kemono_friends/ezo_red_fox/ezo_red_fox_c_arms.mdl", 0, "00000000" )

local Category = "Kemono Friends"

local NPC = { 	Name = "Ezo Red Fox - Friendly", 
				Class = "npc_citizen",
				Model = "models/kemono_friends/ezo_red_fox/ezo_red_fox_npc.mdl",
				Health = "40",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_kemono_friends_ezo_red_fox_f", NPC )

local Category = "Kemono Friends"

local NPC = { 	Name = "Ezo Red Fox - Hostile", 
				Class = "npc_combine_s",
				Model = "models/kemono_friends/ezo_red_fox/ezo_red_fox_npc.mdl",
				Squadname = "Nazi Soldier",
				Numgrenades = "3",
				Health = "50",
				Category = Category	}

list.Set( "NPC", "npc_kemono_friends_ezo_red_fox_h", NPC )