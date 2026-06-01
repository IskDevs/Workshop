player_manager.AddValidModel( "Yoshino", "models/kaesar/yoshino/yoshino.mdl" );
player_manager.AddValidHands( "Yoshino", "models/kaesar/yoshino/c_arms_yoshino.mdl", 0, "00000000" )

local Category = "Kaesar!"

local NPC = { 	Name = "Yoshino - Friendly", 
				Class = "npc_citizen",
				Model = "models/kaesar/yoshino/yoshino_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_yoshino_f", NPC )

local Category = "Kaesar!"

local NPC = { 	Name = "Yoshino - Hostile", 
				Class = "npc_combine_s",
				Model = "models/kaesar/yoshino/yoshino_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_yoshino_h", NPC )