player_manager.AddValidModel( "Nanashi Mumei", "models/pacagma/vtuber/mumei/mumei_player.mdl" );
player_manager.AddValidHands( "Nanashi Mumei", "models/pacagma/vtuber/mumei/mumei_arms.mdl", 0, "00000000" )

local Category = "Virtual Youtuber"

local NPC = { 	Name = "Nanashi Mumei - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/vtuber/mumei/mumei_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_mumei_f", NPC )

local Category = "Virtual Youtuber"

local NPC = { 	Name = "Nanashi Mumei - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/vtuber/mumei/mumei_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_mumei_h", NPC )