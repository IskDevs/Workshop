// Patrick Star - Maygik
player_manager.AddValidModel( "Patrick Star", 	"models/spongebob/patrick/patrick_star.mdl" )
player_manager.AddValidHands( "Patrick Star", 	"models/spongebob/patrick/patrick_star_arms.mdl", 0, "00000000" )


local Category = "Spongebob Squarepants"




local NPC = {
	Name = "Patrick Star (Friendly)",
	Class = "npc_citizen",
	Category = Category,
	Model = "models/spongebob/patrick/patrick_star_f.mdl",
	Weapons = { "weapon_smg1", "weapon_ar2" },
	KeyValues = { citizentype = 4 }
}
list.Set( "NPC", "patrick_star_friendly", NPC )


local NPC = {
	Name = "Patrick Star (Hostile)",
	Class = "npc_combine_s",
	Category = Category,
	Model = "models/spongebob/patrick/patrick_star_e.mdl",
	Weapons = { "weapon_smg1", "weapon_ar2" },
	KeyValues = { SquadName = "spongebob", Numgrenades = 5 }
}
list.Set( "NPC", "patrick_star_enemy", NPC )