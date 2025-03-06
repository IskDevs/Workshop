player_manager.AddValidModel( "Lego Shadow", "models/cktheamazingfrog/player/shadow/shadow.mdl" )
player_manager.AddValidHands( "Lego Shadow", "models/cktheamazingfrog/player/shadow/shadowarms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "Lego Shadow", "models/cktheamazingfrog/player/shadow/shadow.mdl" )

local Category = "CK's NPCs"

local NPC = {   
        Name = "Lego Shadow Hostile", 
        Class = "npc_combine_s", 
        Model = "models/cktheamazingfrog/player/shadow/shadow.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Bad Shadow"
}

list.Set( "NPC", "npc_shadowenemy", NPC ) 

local NPC = {   
        Name = "Lego Shadow Friendly", 
        Class = "npc_citizen", 
        Model = "models/cktheamazingfrog/player/shadow/shadow.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Good Shadow"
}

list.Set( "NPC", "npc_shadowfriend", NPC )