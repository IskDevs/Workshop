player_manager.AddValidModel( "Michael Myers (The Shape)", 				"models/players/mj_dbd_myers.mdl" )
list.Set( "PlayerOptionsModel",  "Michael Myers (The Shape)",				"models/players/mj_dbd_myers.mdl" )
player_manager.AddValidHands(	"Michael Myers (The Shape)", "models/players/mj_dbd_myers_vm.mdl", 0, "00000000" )

local Category = "Dead by Daylight" 

local NPC =
{
	Name = "Michael Myers (The Shape) - Friendly",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/players/mj_dbd_myers.mdl",
	Category = Category
}

list.Set( "NPC", "myers_ally", NPC )