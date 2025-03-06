--Add Playermodel
player_manager.AddValidModel( "White Rock Shooter", "models/jazzmcfly/wrs/wrs.mdl" )
player_manager.AddValidHands( "White Rock Shooter", "models/jazzmcfly/wrs/c_arms/wrs.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "White Rock Shooter",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/jazzmcfly/wrs/npc/wrs.mdl",
	Category = "BRS Series"
}

list.Set( "NPC", "npc_mcfly_wrs", NPC )