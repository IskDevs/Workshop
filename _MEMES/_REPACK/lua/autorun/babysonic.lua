player_manager.AddValidModel( "Baby Sonic", "models/cktheamazingfrog/player/babysonic/babysonic.mdl" )
player_manager.AddValidHands( "Baby Sonic", "models/cktheamazingfrog/player/babysonic/babysonicarms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "Baby Sonic", "models/cktheamazingfrog/player/babysonic/babysonic.mdl" )

local Category = "CK's NPCs"

local NPC = {   
        Name = "Baby Sonic Hostile", 
        Class = "npc_combine_s", 
        Model = "models/cktheamazingfrog/player/babysonic/babysonic.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Bad Baby Sonic"
}

list.Set( "NPC", "npc_bsonicenemy", NPC ) 

local NPC = {   
        Name = "Baby Sonic Friendly", 
        Class = "npc_citizen", 
        Model = "models/cktheamazingfrog/player/babysonic/babysonic.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Good Baby Sonic"
}

list.Set( "NPC", "npc_bsonicfriend", NPC )
