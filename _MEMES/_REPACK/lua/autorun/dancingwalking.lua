player_manager.AddValidModel( "Carter (Virtual Insanity)", "models/hellinspector/babsisshopping/carter_vi_pm.mdl" );
list.Set( "PlayerOptionsModel", "Carter (Virtual Insanity)", "models/hellinspector/babsisshopping/carter_vi_pm.mdl" );
player_manager.AddValidHands( "Carter (Virtual Insanity)", "models/hellinspector/babsisshopping/carter_vi_arms.mdl", 0, "0" )


local Category = "Carter (Virtual Insanity)"

local NPC = {   
        Name = "Carter (Virtual Insanity) Enemy", 
        Class = "npc_combine_s", 
        Model = "models/hellinspector/babsisshopping/carter_vi_pm.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Carter Virtual Insanity Enemy"
}

list.Set( "NPC", "npc_CarterVirtualInsanityEnemy", NPC ) 

local NPC = {   
        Name = "Carter (Virtual Insanity) Friend", 
        Class = "npc_citizen", 
        Model = "models/hellinspector/babsisshopping/carter_vi_pm.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Carter Virtual Insanity Friend"
}

list.Set( "NPC", "npc_CarterVirtualInsanityFriend", NPC ) 


