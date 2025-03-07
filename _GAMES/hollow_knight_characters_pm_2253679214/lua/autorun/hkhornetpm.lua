player_manager.AddValidModel( "Hornet", "models/hollowknight/hornet/hornet.mdl" );
player_manager.AddValidHands( "Hornet", "models/hollowknight/vessel/c_arms.mdl" , 0, "00000000" )
list.Set( "PlayerOptionsModel", "Hornet", "models/hollowknight/hornet/hornet.mdl" );

local NPC = {
	Name = "Hornet",
	Class = "npc_citizen",
	Category = "The Boys NPCs",
	Model = "models/hollowknight/hornet/hornet.mdl",
	KeyValues = { citizentype = CT_UNIQUE }
}
list.Set( "NPC", "npc_hkhornet_citizen", NPC )