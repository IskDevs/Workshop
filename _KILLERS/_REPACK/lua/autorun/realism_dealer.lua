player_manager.AddValidModel( "Realistic Dealer", "models/pacagma/thebayg/realism_dealer/realistic_dealer_player.mdl" );
player_manager.AddValidHands( "Realistic Dealer", "models/pacagma/thebayg/realism_dealer/realistic_dealer_arms.mdl", 0, "00000000" )

local Category = "Buckshot Roulette"

local NPC = { 	Name = "Realistic Dealer - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/thebayg/realism_dealer/realistic_dealer_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_realism_dealer_f", NPC )

local Category = "Buckshot Roulette"

local NPC = { 	Name = "Realistic Dealer - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/thebayg/realism_dealer/realistic_dealer_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_realism_dealer_h", NPC )