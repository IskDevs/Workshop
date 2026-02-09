player_manager.AddValidModel( "TimLockwood", "models/a_thing/cwacom/timlockwood.mdl" );

list.Set( "PlayerOptionsModel", "TimLockwood", "models/a_thing/cwacom/timlockwood.mdl" );


local Category = "Cloudy with a Chance of Meatballs"

local NPC = {   
        Name = "TimLockwood Enemy", 
        Class = "npc_combine_s", 
        Model = "models/a_thing/cwacom/timlockwood.mdl",                 
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "TimLockwood Enemy"
}

list.Set( "NPC", "npc_TimLockwood_enemy", NPC ) 

local NPC = {   
        Name = "TimLockwood Friend", 
        Class = "npc_citizen", 
        Model = "models/a_thing/cwacom/timlockwood.mdl",                 
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "TimLockwood Friend"
}

list.Set( "NPC", "npc_TimLockwood_Friend", NPC ) 


