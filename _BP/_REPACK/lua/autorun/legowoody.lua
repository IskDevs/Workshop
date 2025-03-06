//Replace all the "XXX" with your character name.

//         Put your model folder here vvv
player_manager.AddValidModel( "Lego Woody", "models/hellinspector/lego_incredibles/woody/woody_pm.mdl" );

list.Set( "PlayerOptionsModel", "Lego Woody", "models/hellinspector/lego_incredibles/woody/woody_pm.mdl" );


local Category = "Lego Woody"

local NPC = {   
        Name = "Lego Woody Enemy", 
        Class = "npc_combine_s", 
        Model = "models/hellinspector/lego_incredibles/woody/woody_pm.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Lego Woody Enemy"
}

list.Set( "NPC", "npc_Lego WoodyEnemy", NPC ) 

local NPC = {   
        Name = "Lego Woody Friend", 
        Class = "npc_citizen", 
        Model = "models/hellinspector/lego_incredibles/woody/woody_pm.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Lego Woody Friend"
}

list.Set( "NPC", "npc_Lego WoodyFriend", NPC ) 


