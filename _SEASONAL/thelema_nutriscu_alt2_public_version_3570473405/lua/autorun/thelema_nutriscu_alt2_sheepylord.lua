player_manager.AddValidModel("Thelema Nutriscu - Summer Render", "models/sheepylord/honkai_impact/thelema_nutriscu_alt2.mdl");
player_manager.AddValidHands("Thelema Nutriscu - Summer Render", "models/sheepylord/honkai_impact/thelema_nutriscu_alt2_arms.mdl" , 0, "000000")

local Category = "Honkai Impact"

local NPC = {
    Name = "Thelema Nutriscu - Summer Render (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/honkai_impact/thelema_nutriscu_alt2.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "thelema_nutriscu_alt2_sheepylord_F", NPC)

local NPC = {
    Name = "Thelema Nutriscu - Summer Render (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/honkai_impact/thelema_nutriscu_alt2.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "thelema_nutriscu_alt2_sheepylord_E", NPC)

