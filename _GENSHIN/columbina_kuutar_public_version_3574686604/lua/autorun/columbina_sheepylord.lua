player_manager.AddValidModel("「The Moon Maiden」 Columbina Kuutar", "models/sheepylord/genshin_impact/columbina.mdl");
player_manager.AddValidHands("「The Moon Maiden」 Columbina Kuutar", "models/sheepylord/genshin_impact/columbina_arms.mdl" , 0, "000000")

local Category = "Genshin Impact"

local NPC = {
    Name = "Columbina Kuutar (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/genshin_impact/columbina.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "columbina_sheepylord_F", NPC)

local NPC = {
    Name = "Columbina Kuutar (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/genshin_impact/columbina.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "columbina_sheepylord_E", NPC)

