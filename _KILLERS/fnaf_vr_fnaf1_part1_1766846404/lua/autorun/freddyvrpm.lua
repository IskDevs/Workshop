player_manager.AddValidModel( "Freddy VR", "models/alejenus/fnafvr/freddy/freddyvr.mdl" )
list.Set( "PlayerOptionsModel", "Freddy VR", "models/alejenus/fnafvr/freddy/freddyvr.mdl" )
player_manager.AddValidHands( "Freddy VR", "models/alejenus/fnafvr/freddy/c_arms/c_arms.mdl", 0, "main" )
local NPC = {	Name = "Friendly Freddy",
				Class = "npc_citizen",
				Model = "models/alejenus/fnafvr/freddy/freddyvr.mdl",
				Health = "200",
				KeyValues = { citizentype = 4 },
				Category = "FNAF VR: Help Wanted" }
list.Set( "NPC", "freddyvr_friendly", NPC )


local NPC = {	Name = "Hostile Freddy",
				Class = "npc_combine",
				Model = "models/alejenus/fnafvr/freddy/freddyvr.mdl",
				Health = "200",
				Category = "FNAF VR: Help Wanted" }
list.Set( "NPC", "freddyvr_hostile", NPC )



