player_manager.AddValidModel("Cyrene", "models/sheepylord/honkai_star_rail/cyrene_alt.mdl");
player_manager.AddValidHands("Cyrene", "models/sheepylord/honkai_star_rail/cyrene_alt_arms.mdl" , 0, "000000")

local Category = "Honkai: Star Rail"

local NPC = {
    Name = "Cyrene (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/honkai_star_rail/cyrene_alt.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "cyrene_alt_sheepylord_F", NPC)

local NPC = {
    Name = "Cyrene (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/honkai_star_rail/cyrene_alt.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "cyrene_alt_sheepylord_E", NPC)

