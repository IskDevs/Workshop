player_manager.AddValidModel( "Lego Chell", "models/cktheamazingfrog/player/chell/chell.mdl" )
player_manager.AddValidHands( "Lego Chell", "models/cktheamazingfrog/player/chell/chellarms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "Lego Chell", "models/cktheamazingfrog/player/chell/chell.mdl" )

local Category = "CK's NPCs"

local NPC = {   
        Name = "Lego Chell Hostile", 
        Class = "npc_combine_s", 
        Model = "models/cktheamazingfrog/player/chell/chell.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Bad Chell"
}

list.Set( "NPC", "npc_chellenemy", NPC ) 

local NPC = {   
        Name = "Lego Chell Friendly", 
        Class = "npc_citizen", 
        Model = "models/cktheamazingfrog/player/chell/chell.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Good Chell"
}

list.Set( "NPC", "npc_chellfriend", NPC )