player_manager.AddValidModel("Mualani Umoja - Summer Surfer", "models/sheepylord/genshin_impact/mualani_umojia_alt.mdl");
player_manager.AddValidHands("Mualani Umoja - Summer Surfer", "models/sheepylord/genshin_impact/mualani_umojia_alt_arms.mdl" , 0, "000000")

local Category = "Genshin Impact Outfit Alternatives"

local NPC = {
    Name = "Mualani Umoja - Summer Surfer (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/genshin_impact/mualani_umojia_alt.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "mualani_umojia_alt_sheepylord_F", NPC)

local NPC = {
    Name = "Mualani Umoja - Summer Surfer (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/genshin_impact/mualani_umojia_alt.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "mualani_umojia_alt_sheepylord_E", NPC)

