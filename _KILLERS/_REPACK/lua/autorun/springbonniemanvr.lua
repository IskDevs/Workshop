player_manager.AddValidModel( "Bunny Man", "models/alejenus/fnafvr/bunny/bunnyman.mdl" )
list.Set( "Bunny Man", "models/alejenus/fnafvr/bunny/bunnyman.mdl" )
player_manager.AddValidHands( "Bunny Man", "models/alejenus/fnafvr/bunny/c_arms.mdl", 0, "00000000" )

local NPC = {	Name = "Friendly Springbonnie Man",
				Class = "npc_citizen",
				Model = "models/alejenus/fnafvr/bunny/bunnyman.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = "FNAF VR: Help Wanted" }
list.Set( "NPC", "bunnyman_friendly", NPC )


local NPC = {	Name = "Hostile Springbonnie Man",
				Class = "npc_combine",
				Model = "models/alejenus/fnafvr/bunny/bunnyman.mdl",
				Health = "100",
				Category = "FNAF VR: Help Wanted" }
list.Set( "NPC", "bunnyman_hostile", NPC )



