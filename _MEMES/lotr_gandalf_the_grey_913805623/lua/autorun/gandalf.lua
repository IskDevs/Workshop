player_manager.AddValidModel( "Gandalf the Grey", 					"models/models/konnie/gandalf/gandalf.mdl" )
list.Set( "PlayerOptionsModel",  "Gandalf the Grey",					"models/models/konnie/gandalf/gandalf.mdl" )

local Category = "Lord of the Rings NPC's"

local NPC = { 	Name = "Gandalf the Grey (Friendly)", 
				Class = "npc_citizen",
				Model = "models/models/konnie/gandalf/gandalf_npc.mdl",
				Health = "150",
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_pistol" },
                                Category = Category    }
list.Set( "NPC", "gandalf_friendly", NPC )

local NPC = { 	Name = "Gandalf the Grey (Enemy)", 
				Class = "npc_metropolice",
				Health = "50",
				KeyValues = { squadname = "Gandalf the Grey" },
				Weapons = { "weapon_pistol" },
                                Category = Category    }
list.Set( "NPC", "gandalf_enemy", NPC )

hook.Add("PlayerSpawnedNPC","Gandalf the Greys",function(ply,npc)
	if npc:GetKeyValues().squadname == "Gandalf the Grey" then
		npc:SetModel("models/models/konnie/gandalf/gandalf_npc_evil.mdl")
		npc:SetKeyValue("squadname","")
		npc:SetPos(ply:GetEyeTrace().HitPos+Vector(0,0,15))
	end
		if npc:GetKeyValues().squadname == "LOTR" then
		npc:SetModel("models/models/konnie/gandalf/gandalf_npc_evil.mdl.mdl")
		npc:SetKeyValue("squadname","")
		npc:SetPos(ply:GetEyeTrace().HitPos+Vector(0,0,15))
	end
end)