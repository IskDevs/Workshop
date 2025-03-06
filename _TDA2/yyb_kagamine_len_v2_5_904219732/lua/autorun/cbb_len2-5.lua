--Add Playermodel
player_manager.AddValidModel( "YYB Kagamine Len (v2.5)", "models/captainbigbutt/vocaloid/len.mdl" )
player_manager.AddValidHands( "YYB Kagamine Len (v2.5)", "models/captainbigbutt/vocaloid/c_arms/len.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "YYB Kagamine Len (v2.5)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/captainbigbutt/vocaloid/npc/len.mdl",
	Category = "Vocaloid"
}

list.Set( "NPC", "npc_cbb_len25", NPC )