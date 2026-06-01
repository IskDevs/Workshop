//Replace all the "mrbeangta" with your character name.

//         Put your model folder here vvv
player_manager.AddValidModel( "Mr. Bean (San Andreas)", "models/mrbeangta/mrbeangta_pm.mdl" );
player_manager.AddValidHands( "Mr. Bean (San Andreas)", "models/mrbeangtahands/mrbeangtahands.mdl", 0, "00000000" )

list.Set( "PlayerOptionsModel", "Mr. Bean (San Andreas)", "models/mrbeangta/mrbeangta_pm.mdl" );


local Category = "Mr. Bean (San Andreas)"

local NPC = {   
        Name = "Mr. Bean (San Andreas) Enemy", 
        Class = "npc_combine_s", 
        Model = "models/mrbeangta/mrbeangta_pm.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Mr. Bean (San Andreas) Enemy"
}

list.Set( "NPC", "npc_mrbeangtaenemy", NPC ) 

local NPC = {   
        Name = "Mr. Bean (San Andreas) Friend", 
        Class = "npc_citizen", 
        Model = "models/mrbeangta/mrbeangta_pm.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Mr. Bean (San Andreas) Friend"
}

list.Set( "NPC", "npc_mrbeangtaFriend", NPC ) 


