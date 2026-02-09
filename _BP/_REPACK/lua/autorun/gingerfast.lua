player_manager.AddValidModel( "KF Gingerfast", 				"models/players/gingerfast.mdl" )
list.Set( "PlayerOptionsModel",  "KF Gingerfast",				"models/players/gingerfast.mdl" )

--Add NPC
local Category = "Griffbo's NPCs 2"

local NPC = { 	Name = "Gingerfast (Friendly)", 
				Class = "npc_citizen",
				Model = "models/players/gingerfast.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "KFGFAlly", NPC )

local Category = "Griffbo's NPCs 2"

local NPC = { 	Name = "Gingerfast (Hostile)", 
				Class = "npc_combine_s",
				Model = "models/players/gingerfast.mdl",
				Health = "250",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "KFGFHostile", NPC )