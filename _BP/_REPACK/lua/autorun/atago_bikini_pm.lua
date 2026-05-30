player_manager.AddValidModel( "Atago Bikini", "models/player/Atago_Bikini_PM.mdl" )
player_manager.AddValidHands( "Atago Bikini", "models/player/Atago_Bikini_PM_Arms.mdl", 0, "0" )

local Category = "Kantai Collection"
local NPC = {    Name = "Atago Bikini", 
                Class = "npc_citizen", 
                Model = "models/player/Atago_Bikini_PM.mdl",                 
Health = "250",                 KeyValues = { citizentype = 4 },                 
Category = Category }  list.Set( "NPC", "Atago_Bikini_NPC", NPC ) 