player_manager.AddValidModel( "Riley Freeman", "models/cyanblue/boondocks/riley/riley.mdl" );
player_manager.AddValidHands( "Riley Freeman", "models/cyanblue/boondocks/riley/arms/riley.mdl", 0, "00000000" )

local Category = "The Boondocks"

local NPC = { 	Name = "Riley Freeman", 
				Class = "npc_citizen",
				Model = "models/cyanblue/boondocks/riley/npc/riley.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
				Category = Category	}

list.Set( "NPC", "npc_riley_freeman_boondocks_pm", NPC )