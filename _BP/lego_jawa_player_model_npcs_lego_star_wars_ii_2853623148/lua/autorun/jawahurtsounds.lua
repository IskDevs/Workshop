CreateConVar( "sv_hurtsounds", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"
CreateConVar( "sv_viewheight", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"


local function JawaDeathSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	
	if (ply:GetModel() == "models/cktheamazingfrog/player/jawa/jawa.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("dialog/jawa/death.wav") else
		ply:EmitSound("dialog/jawa/death.wav") end
	end

	end
end
hook.Add( "DoPlayerDeath", "JawaDeathSounds", JawaDeathSounds )

jawa_hurt_spam = false
local function JawaHurtSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	if ply:Health() == 0 then return end
	if jawa_hurt_spam == true then return end

	jawa_hurt_spam = true
	timer.Create( "JawaPly_SVD4_"..ply:SteamID(), 1, 1, function()
	jawa_hurt_spam = false
	end)

	if (ply:GetModel() == "models/cktheamazingfrog/player/jawa/jawa.mdl") then
	ply:EmitSound("dialog/jawa/hurt_" .. math.random( 1, 2 ) .. ".wav")
	end

	end
end
hook.Add( "PlayerHurt", "JawaHurtSounds", JawaHurtSounds )

hook.Add( "PlayerSpawn", "JawaSetViewOffset2", function( ply )
timer.Create( "JawaPly_SVD3_"..ply:SteamID(), 0.1, 1, function()
if (ply:GetModel() == "models/cktheamazingfrog/player/jawa/jawa.mdl") then
ply:EmitSound("dialog/jawa/spawn_" .. math.random( 1, 6 ) .. ".wav")
end

end)
end)
