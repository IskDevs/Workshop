player_manager.AddValidModel( "Christmas BB", "models/Aileri/christmas/bb/christmas_bb.mdl" )
list.Set( "PlayerOptionsModel",  "Christmas BB", "models/Aileri/christmas/bb/christmas_bb.mdl" )
player_manager.AddValidHands( "Christmas BB", "models/Aileri/christmas/bb/christmas_bb_arms.mdl", 0, "00000000"  )

player_manager.AddValidModel( "Christmas Chica", "models/Aileri/christmas/chica/christmas_chica.mdl" )
list.Set( "PlayerOptionsModel",  "Christmas Chica", "models/Aileri/christmas/chica/christmas_chica.mdl" )
player_manager.AddValidHands( "Christmas Chica", "models/Aileri/christmas/chica/christmas_chica_arms.mdl", 0, "00000000"  )

player_manager.AddValidModel( "Christmas Springtrap", "models/Aileri/christmas/springtrap/christmas_springtrap.mdl" )
list.Set( "PlayerOptionsModel",  "Christmas Springtrap", "models/Aileri/christmas/springtrap/christmas_springtrap.mdl" )
player_manager.AddValidHands( "Christmas Springtrap", "models/Aileri/christmas/springtrap/christmas_springtrap_arms.mdl", 0, "00000000"  )

player_manager.AddValidModel( "Christmas Nightmarionne", "models/Aileri/christmas/nightmarionne/christmas_puppet.mdl" )
list.Set( "PlayerOptionsModel",  "Christmas Nightmarionne", "models/Aileri/christmas/nightmarionne/christmas_puppet.mdl" )
player_manager.AddValidHands( "Christmas Nightmarionne", "models/Aileri/christmas/nightmarionne/christmas_puppet_arms.mdl", 0, "00000000"  )

--Add NPC
local Category = "Friendly Fnaf Christmas Animatronics"

local NPC = { 	Name = "Christmas BB", 
				Class = "npc_citizen",
				Model = "models/Aileri/christmas/bb/christmas_bb_rebel.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "npc_c_bb", NPC )

local NPC = { 	Name = "Christmas Chica", 
				Class = "npc_citizen",
				Model = "models/Aileri/christmas/chica/christmas_chica_rebel.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "npc_c_chica", NPC )

local NPC = { 	Name = "Christmas Springtrap", 
				Class = "npc_citizen",
				Model = "models/Aileri/christmas/springtrap/christmas_springtrap_rebel.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "npc_c_springtrap", NPC )

local NPC = { 	Name = "Christmas Nightmarionne", 
				Class = "npc_citizen",
				Model = "models/Aileri/christmas/nightmarionne/christmas_puppet_rebel.mdl",
				Health = "100",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "npc_c_puppet", NPC )






