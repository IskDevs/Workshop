--Add Playermodel
player_manager.AddValidModel( "Tda Yowane Haku Append (v2)", "models/captainbigbutt/vocaloid/haku_append.mdl" )
player_manager.AddValidHands( "Tda Yowane Haku Append (v2)", "models/captainbigbutt/vocaloid/c_arms/haku_append.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Tda Yowane Haku Append (v2)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/captainbigbutt/vocaloid/npc/haku_append.mdl",
	Category = "Vocaloid"
}

list.Set( "NPC", "npc_cbb_hakuappend2", NPC )