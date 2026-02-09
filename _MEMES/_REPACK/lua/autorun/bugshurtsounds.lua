CreateConVar( "sv_hurtsounds", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"
CreateConVar( "sv_viewheight", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"


local function BugsDeathSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	
	if (ply:GetModel() == "models/cktheamazingfrog/player/bugs/bugs.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("dialog/bugs/death_1.wav") else
		ply:EmitSound("dialog/bugs/death_" .. math.random( 1, 4 ) .. ".wav") end
	end

	end
end
hook.Add( "DoPlayerDeath", "BugsDeathSounds", BugsDeathSounds )

bugs_hurt_spam = false
local function BugsHurtSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	if ply:Health() == 0 then return end
	if bugs_hurt_spam == true then return end

	bugs_hurt_spam = true
	timer.Create( "BugsPly_SVD4_"..ply:SteamID(), 1, 1, function()
	bugs_hurt_spam = false
	end)

	if (ply:GetModel() == "models/cktheamazingfrog/player/bugs/bugs.mdl") then
	ply:EmitSound("dialog/bugs/hurt_" .. math.random( 1, 4 ) .. ".wav")
	end

	end
end
hook.Add( "PlayerHurt", "BugsHurtSounds", BugsHurtSounds )

hook.Add( "PlayerSpawn", "BugsSetViewOffset2", function( ply )
timer.Create( "BugsPly_SVD3_"..ply:SteamID(), 0.1, 1, function()
if (ply:GetModel() == "models/cktheamazingfrog/player/bugs/bugs.mdl") then
ply:EmitSound("dialog/bugs/spawn_" .. math.random( 1, 4 ) .. ".wav")
end

end)
end)
