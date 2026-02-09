player_manager.AddValidModel( "LEGO Super Battle Droid", 				"models/players/sbd/legosbd.mdl" )
player_manager.AddValidHands( "LEGO Super Battle Droid", "models/players/sbd/suarms/suarms.mdl", 1, "00000000" )

local modelName = "models/players/sbd/legosbd.mdl"
local tauntSongs = {

	[ACT_GMOD_TAUNT_DANCE] = {"super_taunt.mp3", 100};
	[ACT_GMOD_TAUNT_ROBOT] = {"super_taunt.mp3", 100};
	[ACT_GMOD_TAUNT_LAUGH] = {"super_taunt.mp3", 100};
	[ACT_GMOD_TAUNT_MUSCLE] = {"super_taunt.mp3", 100};
	[ACT_GMOD_TAUNT_SALUTE] = {"super_taunt.mp3", 100};
	[ACT_GMOD_GESTURE_WAVE] = {"super_taunt.mp3", 100};
	[ACT_GMOD_GESTURE_BECON] = {"super_taunt.mp3", 100};
	[ACT_GMOD_GESTURE_AGREE] = {"super_taunt.mp3", 100};
	[ACT_SIGNAL_FORWARD] = {"super_taunt.mp3", 100};
	[ACT_GMOD_GESTURE_TAUNT_ZOMBIE] = {"super_taunt.mp3", 100};
	
}



hook.Add("PlayerDeathSound","super_PlayerDeathSound",function(ply,velocity)	

	if(ply:GetModel() == modelName) then
	
		ply:EmitSound("super_death.mp3", 75)
		return true
		
	end
	
end)

hook.Add("PlayerStartTaunt", "super_PlayerStartTaunt", function(ply, act, len)

	if(ply:GetModel() == modelName) then

		if(istable(tauntSongs[act])) then
		
			ply:EmitSound(tauntSongs[act][1], 75, tauntSongs[act][2])
			
		end
		
	end

end)