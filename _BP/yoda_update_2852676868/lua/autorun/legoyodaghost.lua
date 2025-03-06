player_manager.AddValidModel( "Lego Yoda", "models/cktheamazingfrog/player/yoda/yoda.mdl" )
player_manager.AddValidHands( "Lego Yoda", "models/cktheamazingfrog/player/yoda/yodaarms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "Lego Yoda", "models/cktheamazingfrog/player/yoda/yoda.mdl" )

local Category = "CK's NPCs"

local NPC = {   
        Name = "Lego Yoda Hostile", 
        Class = "npc_combine_s", 
        Model = "models/cktheamazingfrog/player/yoda/yoda.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Bad Yoda"
}

list.Set( "NPC", "npc_yodaenemy", NPC ) 

local NPC = {   
        Name = "Lego Yoda Friendly", 
        Class = "npc_citizen", 
        Model = "models/cktheamazingfrog/player/yoda/yoda.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Good Yoda"
}

list.Set( "NPC", "npc_yodafriend", NPC )
