player_manager.AddValidModel( "Kurumi Tokisaki", "models/pacagma/date_a_live/kurumi_tokisaki/kurumi_tokisaki_player.mdl" );
player_manager.AddValidHands( "Kurumi Tokisaki", "models/pacagma/date_a_live/kurumi_tokisaki/kurumi_tokisaki_arms.mdl", 0, "00000000" )

local Category = "Date A Live"

local NPC = { 	Name = "Kurumi Tokisaki - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/date_a_live/kurumi_tokisaki/kurumi_tokisaki_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_kurumi_tokisaki_f", NPC )

local Category = "Date A Live"

local NPC = { 	Name = "Kurumi Tokisaki - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/date_a_live/kurumi_tokisaki/kurumi_tokisaki_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_kurumi_tokisaki_h", NPC )




