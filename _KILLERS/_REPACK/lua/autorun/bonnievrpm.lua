player_manager.AddValidModel( "Bonnie VR", "models/alejenus/fnafvr/bonnie/bonnievr.mdl" )
list.Set( "PlayerOptionsModel", "Bonnie VR", "models/alejenus/fnafvr/bonnie/Bonnievr.mdl" )
player_manager.AddValidHands( "Bonnie VR", "models/alejenus/fnafvr/bonnie/c_arms/c_arms.mdl", 0, "main" )
local NPC = {	Name = "Friendly Bonnie",
				Class = "npc_citizen",
				Model = "models/alejenus/fnafvr/bonnie/bonnievr.mdl",
				Health = "200",
				KeyValues = { citizentype = 4 },
				Category = "FNAF VR: Help Wanted" }
list.Set( "NPC", "bonnievr_friendly", NPC )


local NPC = {	Name = "Hostile Bonnie",
				Class = "npc_combine",
				Model = "models/alejenus/fnafvr/bonnie/bonnievr.mdl",
				Health = "200",
				Category = "FNAF VR: Help Wanted" }
list.Set( "NPC", "bonnievr_hostile", NPC )

