player_manager.AddValidModel( "Lego Jawa", "models/cktheamazingfrog/player/jawa/jawa.mdl" )
player_manager.AddValidHands( "Lego Jawa", "models/cktheamazingfrog/player/jawa/jawaarms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "Lego Jawa", "models/cktheamazingfrog/player/jawa/jawa.mdl" )

local Category = "CK's NPCs"

local NPC = {   
        Name = "Lego Jawa Hostile", 
        Class = "npc_combine_s", 
        Model = "models/cktheamazingfrog/player/jawa/jawa.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Bad Jawa"
}

list.Set( "NPC", "npc_jawaenemy", NPC ) 

local NPC = {   
        Name = "Lego Jawa Friendly", 
        Class = "npc_citizen", 
        Model = "models/cktheamazingfrog/player/jawa/jawa.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Good Jawa"
}

list.Set( "NPC", "npc_jawafriend", NPC )
