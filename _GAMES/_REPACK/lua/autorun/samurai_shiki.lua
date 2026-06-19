player_manager.AddValidModel( "Shiki", "models/pacagma/samurai/shiki/shiki_player.mdl" );
player_manager.AddValidHands( "Shiki", "models/pacagma/samurai/shiki/shiki_arms.mdl", 0, "00000000" )

local Category = "Samurai Showdown"

local NPC = { 	Name = "Shiki - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/samurai/shiki/shiki_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_shiki_f", NPC )

local Category = "Samurai Showdown"

local NPC = { 	Name = "Shiki - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/samurai/shiki/shiki_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_shiki_h", NPC )