--[[
    
======================================================================================
======================================================================================

                        __  __           _ 
                        |  \/  |         | |
                        | \  / | __ _  __| |
                        | |\/| |/ _` |/ _` |
                        | |  | | (_| | (_| |
                        |_|  |_|\__,_|\__,_|

======================================================================================
======================================================================================
                     
> Discord : https://discord.gg/R5Jh6MH636

======================================================================================

]]

--------------------------------------------------------------------------------------

local Category = "Mad NPC's" --This is where the npc will show up
local NameOfNpc = "Nobara"
local ModelNpc = "models/mad_nobara.mdl"
local NpcId = "Nobara"

--Add Playermodel in Selection
player_manager.AddValidModel( NameOfNpc.. " Mad", ModelNpc );
list.Set( "PlayerOptionsModel", NameOfNpc.. "  Mad", ModelNpc );

--------------------------------------------------------------------------------------

--Add NPC
 
local NPC = {   Name = NameOfNpc.." Friendly", 
                Class = "npc_citizen",
                Model = ModelNpc, 
                Health = "100", 
                KeyValues = { citizentype = 4 }, 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_"..NpcId.."_ally", NPC )
 
local NPC = {   Name = NameOfNpc.." Hostile", 
                Class = "npc_combine_s",
                Model = ModelNpc, --Path to your model
                Health = "200", 
                Weapons = { "weapons_smg1" }, 
                Category = Category }
                               
list.Set( "NPC", "npc_"..NpcId.."_hostile", NPC )

--------------------------------------------------------------------------------------