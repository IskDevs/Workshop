player_manager.AddValidModel( "NuraniNEW", "models/Player/NuraniNEW/nurani_xenoa.mdl" );
list.Set( "PlayerOptionsModel", "NuraniNEW", "models/Player/NuraniNEW/nurani_xenoa.mdl" );
player_manager.AddValidHands( "NuraniNEW", "models/player/nuraninew/c_arms/Nurani_c_arms.mdl", 0, "00000000" )

local Category = "XenoAisam"

local NPC =
{
	Name = "nurani(Friendly)",
	Class = "npc_citizen",
	Health = "100",
	KeyValues = { citizentype = 4 },
	Model = "models/Player/NuraniNEW/nurani_xenoa_f.mdl",
	Category = Category
}

list.Set( "NPC", "npc_nurani_f", NPC )

local NPC =
{
	Name = "nurani(Enemy)",
	Class = "npc_combine_s",
	Health = "100",
	Numgrenades = "4",
	Model = "models/Player/NuraniNEW/nurani_xenoa_e.mdl",
	Category = Category
}

list.Set( "NPC", "npc_nurani_e", NPC )
