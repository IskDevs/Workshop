player_manager.AddValidModel( "Raven", "models/cyanblue/tt/ravent/raven.mdl" );
player_manager.AddValidHands( "Raven", "models/cyanblue/tt/ravent/arms/raven.mdl", 0, "00000000" )

local Category = "Team Titans"

local NPC =
{
	Name = "Raven",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/cyanblue/tt/ravent/npc/raven.mdl",
	Category = Category
}

list.Set( "NPC", "npc_Raven_tt_pm", NPC )

