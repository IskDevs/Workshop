// Goofy Goober Wizard - Maygik
player_manager.AddValidModel( "Goofy Goober Wizard", 	"models/spongebob/wizard/spongebob.mdl" )
player_manager.AddValidHands( "Goofy Goober Wizard", 	"models/spongebob/wizard/spongebob_arms.mdl", 0, "00000000" )


local Category = "Spongebob Squarepants"




local NPC = {
	Name = "Goofy Goober Wizard (Friendly)",
	Class = "npc_citizen",
	Category = Category,
	Model = "models/spongebob/wizard/spongebob_f.mdl",
	Weapons = { "weapon_smg1", "weapon_ar2" },
	KeyValues = { citizentype = 4 }
}
list.Set( "NPC", "spongebob_wizard_friendly", NPC )


local NPC = {
	Name = "Goofy Goober Wizard (Hostile)",
	Class = "npc_combine_s",
	Category = Category,
	Model = "models/spongebob/wizard/spongebob_e.mdl",
	Weapons = { "weapon_smg1", "weapon_ar2" },
	KeyValues = { SquadName = "spongebob", Numgrenades = 5 }
}
list.Set( "NPC", "spongebob_wizard_enemy", NPC )
