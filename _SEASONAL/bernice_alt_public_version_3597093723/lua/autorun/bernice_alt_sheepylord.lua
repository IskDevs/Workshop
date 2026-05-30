player_manager.AddValidModel("Bernice - Echo of Solstice", "models/sheepylord/re_memento_white_shadows/bernice_alt.mdl");
player_manager.AddValidHands("Bernice - Echo of Solstice", "models/sheepylord/re_memento_white_shadows/bernice_alt_arms.mdl" , 0, "000000")

local Category = "Re:memento: White Shadows"

local NPC = {
    Name = "Bernice - Echo of Solstice (Friendly)",
    Class = "npc_citizen",
    Model = "models/sheepylord/re_memento_white_shadows/bernice_alt.mdl",
    Health = "100",
    KeyValues = { citizentype = 4 },
    Weapons = { "weapon_smg1" },
    Category = Category
}

list.Set("NPC", "bernice_alt_sheepylord_F", NPC)

local NPC = {
    Name = "Bernice - Echo of Solstice (Enemy)",
    Class = "npc_combine_s",
    Model = "models/sheepylord/re_memento_white_shadows/bernice_alt.mdl",
    Health = "100",
    Numgrenades = "4",
    Weapons = { "weapon_ar2" },
    Category = Category
}

list.Set("NPC", "bernice_alt_sheepylord_E", NPC)

