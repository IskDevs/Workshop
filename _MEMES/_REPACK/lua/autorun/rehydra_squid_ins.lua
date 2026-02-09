player_manager.AddValidModel( "Squidward Tentacles (Rehydrated)", "models/hellinspector/sponge_rehydrated/squidward_rehydrated_pm.mdl" );

list.Set( "PlayerOptionsModel", "Squidward Tentacles (Rehydrated)", "models/hellinspector/sponge_rehydrated/squidward_rehydrated_pm.mdl" );

player_manager.AddValidHands( "Squidward Tentacles (Rehydrated)", "models/hellinspector/sponge_rehydrated/squidward_rehydrated_arms.mdl", 0, "0" )

local Category = "Squidward (Rehydrated)"

local NPC = {   
        Name = "Squidward (Rehydrated) Enemy", 
        Class = "npc_combine_s", 
        Model = "models/hellinspector/sponge_rehydrated/squidward_rehydrated_pm.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Squidward Rehydrated Enemy"
}

list.Set( "NPC", "npc_Squidwardrehydratedenemy", NPC ) 

local NPC = {   
        Name = "Squidward (Rehydrated) Friend", 
        Class = "npc_citizen", 
        Model = "models/hellinspector/sponge_rehydrated/squidward_rehydrated_pm.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Squidward Rehydrated Friend"
}

list.Set( "NPC", "npc_SquidwardrehydratedFriend", NPC ) 


