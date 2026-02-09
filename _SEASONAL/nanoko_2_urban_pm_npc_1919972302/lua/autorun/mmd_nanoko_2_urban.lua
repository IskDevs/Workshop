player_manager.AddValidModel( "Nanoko 2 Urban", "models/pacagma/mmd/nanoko_2_urban/nanoko_2_urban_player.mdl" );
player_manager.AddValidHands( "Nanoko 2 Urban", "models/pacagma/mmd/nanoko_2_urban/nanoko_2_urban_arms.mdl", 0, "00000000" )
player_manager.AddValidModel( "Nanoko 2 Urban [No Sleeves]", "models/pacagma/mmd/nanoko_2_urban/nanoko_2_urban_player_no_sleeves.mdl" );
player_manager.AddValidHands( "Nanoko 2 Urban [No Sleeves]", "models/pacagma/mmd/nanoko_2_urban/nanoko_2_urban_arms_no_sleeve.mdl", 0, "00000000" )

local Category = "MMD"

local NPC = { 	Name = "Nanoko 2 Urban - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/mmd/nanoko_2_urban/nanoko_2_urban_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_nanoko_2_urban_f", NPC )

local Category = "MMD"

local NPC = { 	Name = "Nanoko 2 Urban - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/mmd/nanoko_2_urban/nanoko_2_urban_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_nanoko_2_urban_h", NPC )