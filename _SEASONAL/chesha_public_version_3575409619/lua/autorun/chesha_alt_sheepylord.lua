player_manager.AddValidModel("Chesha - Swimsuit", "models/sheepylord/re_memento_white_shadows/chesha_alt.mdl");
player_manager.AddValidHands("Chesha - Swimsuit", "models/sheepylord/re_memento_white_shadows/chesha_alt_arms.mdl" , 0, "000000")

local Category = "Re:memento: White Shadows"

local NPC = {
    Name = "Chesha - Swimsuit (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/re_memento_white_shadows/chesha_alt.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "chesha_alt_sheepylord_F", NPC)

local NPC = {
    Name = "Chesha - Swimsuit (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/re_memento_white_shadows/chesha_alt.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "chesha_alt_sheepylord_E", NPC)

