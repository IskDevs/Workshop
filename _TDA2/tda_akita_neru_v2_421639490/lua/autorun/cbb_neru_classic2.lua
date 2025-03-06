--Add Playermodel
player_manager.AddValidModel( "Tda Akita Neru (v2)", "models/captainbigbutt/vocaloid/neru_classic.mdl" )
player_manager.AddValidHands( "Tda Akita Neru (v2)", "models/captainbigbutt/vocaloid/c_arms/neru_classic.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Tda Akita Neru (v2)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/captainbigbutt/vocaloid/npc/neru_classic.mdl",
	Category = "Vocaloid"
}

list.Set( "NPC", "npc_cbb_neru2", NPC )