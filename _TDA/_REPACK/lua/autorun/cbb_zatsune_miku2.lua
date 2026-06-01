--Add Playermodel
player_manager.AddValidModel( "Tda Zatsune Miku (v2)", "models/captainbigbutt/vocaloid/zatsune_miku.mdl" )
player_manager.AddValidHands( "Tda Zatsune Miku (v2)", "models/captainbigbutt/vocaloid/c_arms/zatsune_miku.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Tda Zatsune Miku (v2)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/captainbigbutt/vocaloid/npc/zatsune_miku.mdl",
	Category = "Vocaloid"
}

list.Set( "NPC", "npc_cbb_zatsune2", NPC )