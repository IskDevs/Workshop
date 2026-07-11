player_manager.AddValidModel("Sparxie", "models/sheepylord/honkai_star_rail/sparxie_pm.mdl");
player_manager.AddValidHands("Sparxie", "models/sheepylord/honkai_star_rail/sparxie_arms.mdl" , 0, "000000")

local Category = "Honkai: Star Rail"

local NPC = {
    Name = "Sparxie (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/honkai_star_rail/sparxie.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "sparxie_sheepylord_F", NPC)

local NPC = {
    Name = "Sparxie (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/honkai_star_rail/sparxie.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "sparxie_sheepylord_E", NPC)

