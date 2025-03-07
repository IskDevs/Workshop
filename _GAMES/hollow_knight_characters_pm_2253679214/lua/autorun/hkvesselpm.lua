player_manager.AddValidModel( "Vessel", "models/hollowknight/vessel/vessel.mdl" );
player_manager.AddValidHands( "Vessel", "models/hollowknight/vessel/c_arms.mdl" , 0, "00000000" )
list.Set( "PlayerOptionsModel", "Vessel", "models/hollowknight/vessel/vessel.mdl" );

local NPC = {
	Name = "Vessel",
	Class = "npc_citizen",
	Category = "The Boys NPCs",
	Model = "models/hollowknight/vessel/vessel.mdl",
	KeyValues = { citizentype = CT_UNIQUE }
}
list.Set( "NPC", "npc_hkvessel_citizen", NPC )