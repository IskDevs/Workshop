player_manager.AddValidModel( "Huey", "models/cyanblue/boondocks/huey/huey.mdl" );
player_manager.AddValidHands( "Huey", "models/cyanblue/boondocks/huey/arms/huey.mdl", 0, "00000000" )

local Category = "The Boondocks"

local NPC = { 	Name = "Huey", 
				Class = "npc_citizen",
				Model = "models/cyanblue/boondocks/huey/npc/huey.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_Huey_boondocks_pm", NPC )