--Add Playermodel
player_manager.AddValidModel( "晴香瑰夏", "models/PM/kanami_qinxiangPM.mdl" )                         --PM模型
player_manager.AddValidHands( "晴香瑰夏", "models/arms/kanami_qinxiangarms.mdl", 0, "00000000" )      --PM手模

local Category = "Strinova(se)"                                                                        --NPC MOD分类

local NPC = 
{
	Name = "晴香瑰夏(Friendly)",                                                            --友好NPC名字
	Class = "npc_citizen", 
	Health = "150",                                                                    --NPC血量
	KeyValues = { citizentype = 4 }, 
	Model = "models/NPC/kanami_qinxiangnpc.mdl",                                                  --友好NPC模型
	Weapons = { "weapon_ar2","weapon_smg1"},                                           --NPC出生自带武器
	Category = Category
}

list.Set( "NPC", "kanami_qinxiang_friendly", NPC )

local NPC =
{
	Name = "晴香瑰夏(Enemy)",                                                                --敌人NPC名字
	Class = "npc_combine_s",
	Health = "150",
	Numgrenades = "4",
	Model = "models/NPC/kanami_qinxiangnpc.mdl",                                                  --敌人NPC模型
	Weapons = { "weapon_ar2","weapon_smg1"},
	Category = Category
}

list.Set( "NPC", "kanami_qinxiang_enemy", NPC )
