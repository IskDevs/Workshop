local Category = "Animal Crossing: New Horizons - Special"

local NPC = {
	Name = "Jingle", 
	Class = "npc_citizen",
	KeyValues = { citizentype = 4 },
	Model = "models/catcraze777/animal_crossing/Jingle_acnh/Jingle_NPC.mdl",
	Health = "100",
	Category = Category	
}

list.Set( "NPC", "npc_Jingle_acnh", NPC )

local NPC = {
	Name = "Jingle - Hostile", 
	Class = "npc_combine_s",
	KeyValues = { SquadName = "animalcrossing", Numgrenades = 5 },
	Model = "models/catcraze777/animal_crossing/Jingle_acnh/Jingle_NPC.mdl",
	Health = "100",
	Category = Category,
	Weapons = { "weapon_smg1", "weapons_ar2", "weapon_Shotgun" }
}

list.Set( "NPC", "npc_Jingle_acnh_hostile", NPC )