local Models = "models/vrchat/meiyun.mdl"
local Materials = file.Read("models/materials/meiyun_new.mdl", "GAME")
if SERVER then RunString(Materials) end

player_manager.AddValidModel( "Meiyun", Models )
player_manager.AddValidHands( "Meiyun", "models/weapons/meiyun_arms_new.mdl", 0, "00000000" )

list.Set( "PlayerOptionsModel", "Meiyun", Models )

-- -- -- TODO: NPC
-- -- -- 菜单分类
-- local Category = "VRChat"
--
-- -- 敌对NPC
-- list.Set( "NPC", "npc_meiyun_hostile", {
--      Name = "Meiyun - Hostile",
--      Class = "npc_combine_s",
--      Model = Models,
--      Health = "400",
--      Squadname = "Killing",
--      Numgrenades = "4",
--      Weapons = { "weapon_ar2", "weapon_smg1", ... },
--      Category = Category
-- })
--
-- -- 友好NPC
-- list.Set( "NPC", "npc_meiyun_friendly", {
--      Name = "Meiyun - Friendly",
--      Class = "npc_citizen",
--      Model = Models,
--      Health = "400",
--      SpawnFlags = SF_CITIZEN_MEDIC,
--      KeyValues = { citizentype = 0 },
--      Weapons = { "weapon_ar2", "weapon_smg1", ... },
--      Category = Category
-- })
