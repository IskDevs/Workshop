player_manager.AddValidModel( "Hatsune Miku V3", "models/vocaloid/hatsune_miku_v3/hatsune_miku_v3_player.mdl" );
player_manager.AddValidHands( "Hatsune Miku V3", "models/vocaloid/hatsune_miku_v3/hatsune_miku_v3_arms.mdl", 0, "00000000" )
player_manager.AddValidModel( "Hatsune Miku V3 No Transparent Sleeve", "models/vocaloid/hatsune_miku_v3/hatsune_miku_v3_player_no_transparent.mdl" );
player_manager.AddValidHands( "Hatsune Miku V3 No Transparent Sleeve", "models/vocaloid/hatsune_miku_v3/hatsune_miku_v3_arms_no_transparent.mdl", 0, "00000000" )

local Category = "Vocaloid"

local NPC = { 	Name = "Hatsune Miku V3 - Friendly", 
				Class = "npc_citizen",
				Model = "models/vocaloid/hatsune_miku_v3/hatsune_miku_v3_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_hatsune_miku_v3_f", NPC )

local Category = "Vocaloid"

local NPC = { 	Name = "Hatsune Miku V3 - Hostile", 
				Class = "npc_combine_s",
				Model = "models/vocaloid/hatsune_miku_v3/hatsune_miku_v3_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_hatsune_miku_v3_h", NPC )

