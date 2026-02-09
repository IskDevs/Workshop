player_manager.AddValidModel( "Bugs Bunny (LTWOM)", "models/cktheamazingfrog/player/bugs/bugs.mdl" )
player_manager.AddValidHands( "Bugs Bunny (LTWOM)", "models/cktheamazingfrog/player/bugs/bugsarms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "Bugs Bunny (LTWOM)", "models/cktheamazingfrog/player/bugs/bugs.mdl" )

local Category = "CK's NPCs"

local NPC = {   
        Name = "Bugs Bunny (LTWOM) Hostile", 
        Class = "npc_combine_s", 
        Model = "models/cktheamazingfrog/player/bugs/bugs.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Bad Wabbit"
}

list.Set( "NPC", "npc_wabbitenemy", NPC ) 

local NPC = {   
        Name = "Bugs Bunny (LTWOM) Friendly", 
        Class = "npc_citizen", 
        Model = "models/cktheamazingfrog/player/bugs/bugs.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Good Wabbit"
}

list.Set( "NPC", "npc_wabbitfriend", NPC )

--PRECACHING--

--Models

util.PrecacheModel( "models/cktheamazingfrog/player/bugs/bugs.mdl" )
util.PrecacheModel( "models/cktheamazingfrog/player/bugs/bugsarms.mdl" )


--Death / Drown Sounds

util.PrecacheSound( "dialog/bugs/death_1.wav" )
util.PrecacheSound( "dialog/bugs/death_2.wav" )
util.PrecacheSound( "dialog/bugs/death_3.wav" )
util.PrecacheSound( "dialog/bugs/death_4.wav" )

--Hurt Sounds

util.PrecacheSound( "dialog/bugs/hurt_1.wav" )
util.PrecacheSound( "dialog/bugs/hurt_2.wav" )
util.PrecacheSound( "dialog/bugs/hurt_3.wav" )
util.PrecacheSound( "dialog/bugs/hurt_4.wav" )


--Spawn Sounds

util.PrecacheSound( "dialog/bugs/spawn_1.wav" )
util.PrecacheSound( "dialog/bugs/spawn_2.wav" )
util.PrecacheSound( "dialog/bugs/spawn_3.wav" )
util.PrecacheSound( "dialog/bugs/spawn_4.wav" )
