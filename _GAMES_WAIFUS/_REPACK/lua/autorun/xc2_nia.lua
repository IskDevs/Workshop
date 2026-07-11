player_manager.AddValidModel( "Nia", "models/pacagma/xenoblade_chronicles_2/nia/nia_player.mdl" );
player_manager.AddValidHands( "Nia", "models/pacagma/xenoblade_chronicles_2/nia/nia_arms.mdl", 0, "00000000" )

local Category = "XC2"

local NPC = { 	Name = "Nia - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/xenoblade_chronicles_2/nia/nia_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_nia_f", NPC )

local Category = "XC2"

local NPC = { 	Name = "Nia - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/xenoblade_chronicles_2/nia/nia_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_nia_h", NPC )

player_manager.AddValidModel( "Nia [Catalyst]", "models/pacagma/xenoblade_chronicles_2/nia/nia_catalyst_player.mdl" );

local Category = "XC2"

local NPC = { 	Name = "Nia [Catalyst] - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/xenoblade_chronicles_2/nia/nia_catalyst_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_nia_catal_f", NPC )

local Category = "XC2"

local NPC = { 	Name = "Nia [Catalyst] - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/xenoblade_chronicles_2/nia/nia_catalyst_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_nia_catal_h", NPC )


