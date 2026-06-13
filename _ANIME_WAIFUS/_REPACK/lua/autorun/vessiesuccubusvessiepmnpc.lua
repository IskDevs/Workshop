player_manager.AddValidModel( "Vessie Succubus", "models/vessie/cm3d2/vessiesuccubus.mdl" )
player_manager.AddValidHands( "Vessie Succubus", "models/vessie/cm3d2/arms/vessiesuccubus.mdl", 0, "00000000" )

player_manager.AddValidModel( "Vessie Succubus (+Anims)", "models/vessie/cm3d2/vessiesuccubus-anim.mdl" )
player_manager.AddValidHands( "Vessie Succubus (+Anims)", "models/vessie/cm3d2/arms/vessiesuccubus.mdl", 0, "00000000" )

--Add NPC
local NPC =
{
	Name = "Vessie Succubus (Friendly)",
	Class = "npc_citizen",
	KeyValues = { citizentype = 4, spawnflags = 155908, },
	Model = "models/vessie/cm3d2/npc/friendly/vessiesuccubus.mdl",
	Health = "1000",
	Weapons = { "weapon_smg1" },
	Category = "Vessie's Waifus"
	
}

list.Set( "NPC", "npc_vessuccubus_vesf", NPC )

--Add NPC
local NPC =
{
	Name = "Vessie Succubus (Hostile)",
	Class = "npc_combine_s",
	Model = "models/vessie/cm3d2/npc/hostile/vessiesuccubus.mdl",
	Health = "1000",
	Squadname = "Overwatch",
	Numgrenades = "15",
	Weapons = { "weapon_smg1" },
	Category = "Vessie's Waifus"
	
}

list.Set( "NPC", "npc_vessuccubus_vesh", NPC )