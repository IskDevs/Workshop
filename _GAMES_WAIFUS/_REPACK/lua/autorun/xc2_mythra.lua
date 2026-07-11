player_manager.AddValidModel( "Mythra", "models/pacagma/xenoblade_chronicles_2/mythra/mythra_player.mdl" );
player_manager.AddValidHands( "Mythra", "models/pacagma/xenoblade_chronicles_2/mythra/mythra_arms.mdl", 0, "00000000" )

local Category = "XC2"

local NPC = { 	Name = "Mythra - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/xenoblade_chronicles_2/mythra/mythra_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_mythra_f", NPC )

local Category = "XC2"

local NPC = { 	Name = "Mythra - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/xenoblade_chronicles_2/mythra/mythra_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_mythra_h", NPC )


player_manager.AddValidModel( "Mythra Swimsuit", "models/pacagma/xenoblade_chronicles_2/mythra_swim/mythra_swim_player.mdl" );
player_manager.AddValidHands( "Mythra Swimsuit", "models/pacagma/xenoblade_chronicles_2/mythra_swim/mythra_swim_arms.mdl", 0, "00000000" )

local Category = "XC2"

local NPC = { 	Name = "Mythra Swimsuit - Friendly", 
				Class = "npc_citizen",
				Model = "models/pacagma/xenoblade_chronicles_2/mythra_swim/mythra_swim_npc.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_mythra_swim_f", NPC )

local Category = "XC2"

local NPC = { 	Name = "Mythra Swimsuit - Hostile", 
				Class = "npc_combine_s",
				Model = "models/pacagma/xenoblade_chronicles_2/mythra_swim/mythra_swim_npc.mdl",
				Squadname = "Enemies",
				Numgrenades = "3",
				Health = "100",
				Category = Category	}

list.Set( "NPC", "npc_mythra_swim_h", NPC )

