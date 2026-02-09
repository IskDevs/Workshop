--Add Playermodel
player_manager.AddValidModel( "YYB Kagamine Rin (v2.5)", "models/captainbigbutt/vocaloid/rin.mdl" )
player_manager.AddValidHands( "YYB Kagamine Rin (v2.5)", "models/captainbigbutt/vocaloid/c_arms/rin.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "YYB Kagamine Rin (v2.5)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/captainbigbutt/vocaloid/npc/rin.mdl",
	Category = "Vocaloid"
}

list.Set( "NPC", "npc_cbb_rin25", NPC )