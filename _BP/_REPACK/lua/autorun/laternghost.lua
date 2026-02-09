player_manager.AddValidModel( "Jet Latern Ghost", "models/arty/codmw2023/mp/specgru/jet/latern/jet_pm.mdl" )

player_manager.AddValidHands( "Jet Latern Ghost", "models/arty/codmw2023/mp/specgru/jet/latern/jet_vm.mdl", 0, "00" )

local Category = "SpecGru" 

local NPC = {   Name = "Jet Latern Ghost (Hostile)", 
                Class = "npc_combine_s",
                Model = "models/arty/codmw2023/mp/specgru/jet/latern/jet_hostile.mdl", 
                Health = "150", 
                Weapons = {"weapon_shotgun","weapon_smg1","weapon_ar2"}, 
                Category = Category }
                               
list.Set( "NPC", "mw2023laternghost_h", NPC )

local NPC = {   Name = "Jet Latern Ghost (Friendly)", 
                Class = "npc_citizen",
                Model = "models/arty/codmw2023/mp/specgru/jet/latern/jet_friendly.mdl", 
                Health = "150", 
                KeyValues = { citizentype = 4 }, 
                Weapons = {"weapon_shotgun","weapon_smg1","weapon_ar2"}, 
                Category = Category }
                               
list.Set( "NPC", "mw2023laternghost_f", NPC )

