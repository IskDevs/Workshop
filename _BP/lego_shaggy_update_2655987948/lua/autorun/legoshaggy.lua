player_manager.AddValidModel( "Lego Shaggy", "models/cktheamazingfrog/player/shaggy/shaggy.mdl" )
player_manager.AddValidHands( "Lego Shaggy", "models/cktheamazingfrog/player/shaggy/shaggyarms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "Lego Shaggy", "models/cktheamazingfrog/player/shaggy/shaggy.mdl" )

local Category = "CK's NPCs"

local NPC = {   
        Name = "Lego Shaggy Hostile", 
        Class = "npc_combine_s", 
        Model = "models/cktheamazingfrog/player/shaggy/shaggy.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Bad Shaggy"
}

list.Set( "NPC", "npc_shaggyenemy", NPC ) 

local NPC = {   
        Name = "Lego Shaggy Friendly", 
        Class = "npc_citizen", 
        Model = "models/cktheamazingfrog/player/shaggy/shaggy.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Good Shaggy"
}

list.Set( "NPC", "npc_shaggyfriend", NPC )

--PRECACHING--

--Models

util.PrecacheModel( "models/cktheamazingfrog/player/shaggy/shaggy.mdl" )
util.PrecacheModel( "models/cktheamazingfrog/player/shaggy/shaggyarms.mdl" )


--Death / Drown Sounds

util.PrecacheSound( "dialog/shaggy/death_1.wav" )
util.PrecacheSound( "dialog/shaggy/death_2.wav" )
util.PrecacheSound( "dialog/shaggy/death_3.wav" )
util.PrecacheSound( "dialog/shaggy/death_4.wav" )

--Hurt Sounds

util.PrecacheSound( "dialog/shaggy/hurt_1.wav" )
util.PrecacheSound( "dialog/shaggy/hurt_2.wav" )
util.PrecacheSound( "dialog/shaggy/hurt_3.wav" )
util.PrecacheSound( "dialog/shaggy/hurt_4.wav" )


--Spawn Sounds

util.PrecacheSound( "dialog/shaggy/spawn_1.wav" )
util.PrecacheSound( "dialog/shaggy/spawn_2.wav" )
util.PrecacheSound( "dialog/shaggy/spawn_3.wav" )
util.PrecacheSound( "dialog/shaggy/spawn_4.wav" )
util.PrecacheSound( "dialog/shaggy/spawn_5.wav" )
