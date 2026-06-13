-- Player Model

player_manager.AddValidModel( "Mami", "models/libertyforce/mami/Mami_Player.mdl" )
player_manager.AddValidHands( "Mami", "models/libertyforce/mami/c_arms.mdl", 0, "00000000" )


-- NPC

local NPC =
{
	Name = "Mami",
	Class = "npc_citizen",
	KeyValues =	{ citizentype = 4 },
	Model = "models/libertyforce/mami/Mami_NPC.mdl",
	Health = "100",
	Category = "Humans + Resistance"
}
list.Set( "NPC", "npc_mami", NPC )