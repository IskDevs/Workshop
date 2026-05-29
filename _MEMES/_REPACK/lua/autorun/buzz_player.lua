player_manager.AddValidModel( "Buzz Lightyear", "models/hellinspector/buzz/buzz_player.mdl" );

list.Set( "PlayerOptionsModel", "Buzz Lightyear", "models/hellinspector/buzz/buzz_player.mdl" );

local Category = "Buzz Lightyear"

local NPC = {   
        Name = "Buzz Enemy", 
        Class = "npc_combine_s", 
        Model = "models/hellinspector/buzz/buzz_player.mdl",                 
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Buzz Enemy"
}

list.Set( "NPC", "npc_Buzzenemy", NPC ) 

local NPC = {   
        Name = "Buzz Friend", 
        Class = "npc_citizen", 
        Model = "models/hellinspector/buzz/buzz_player.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Buzz Friend"
}

list.Set( "NPC", "npc_BuzzFriend", NPC ) 



