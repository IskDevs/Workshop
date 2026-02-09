player_manager.AddValidModel("The Herta", "models/sheepylord/honkai_star_rail/the_herta.mdl");
player_manager.AddValidHands("The Herta", "models/sheepylord/honkai_star_rail/the_herta_arms.mdl" , 0, "000000")

local Category = "Honkai: Star Rail"

local NPC = {
    Name = "The Herta (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/honkai_star_rail/the_herta.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "the_herta_sheepylord_F", NPC)

local NPC = {
    Name = "The Herta (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/honkai_star_rail/the_herta.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "the_herta_sheepylord_E", NPC)

