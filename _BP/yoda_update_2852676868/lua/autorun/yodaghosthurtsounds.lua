CreateConVar( "sv_hurtsounds", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"
CreateConVar( "sv_viewheight", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"


local function YodaDeathSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	
	if (ply:GetModel() == "models/cktheamazingfrog/player/yoda/yoda.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("dialog/yoda/death.wav") else
		ply:EmitSound("dialog/yoda/death.wav") end
	end

	end
end
hook.Add( "DoPlayerDeath", "YodaDeathSounds", YodaDeathSounds )

yoda_hurt_spam = false
local function YodaHurtSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	if ply:Health() == 0 then return end
	if yoda_hurt_spam == true then return end

	yoda_hurt_spam = true
	timer.Create( "YodaPly_SVD4_"..ply:SteamID(), 1, 1, function()
	yoda_hurt_spam = false
	end)

	if (ply:GetModel() == "models/cktheamazingfrog/player/yoda/yoda.mdl") then
	ply:EmitSound("dialog/yoda/hurt_" .. math.random( 1, 3 ) .. ".wav")
	end

	end
end
hook.Add( "PlayerHurt", "YodaHurtSounds", YodaHurtSounds )

hook.Add( "PlayerSpawn", "YodaSetViewOffset2", function( ply )
timer.Create( "YodaPly_SVD3_"..ply:SteamID(), 0.1, 1, function()
if (ply:GetModel() == "models/cktheamazingfrog/player/yoda/yoda.mdl") then
ply:EmitSound("")
end

end)
end)
