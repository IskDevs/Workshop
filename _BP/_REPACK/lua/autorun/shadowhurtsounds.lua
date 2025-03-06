CreateConVar( "sv_hurtsounds", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"
CreateConVar( "sv_viewheight", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"


local function ShadowDeathSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	
	if (ply:GetModel() == "models/cktheamazingfrog/player/shadow/shadow.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("dialog/shadow/death_1.wav") else
		ply:EmitSound("dialog/shadow/death_" .. math.random( 1, 4 ) .. ".wav") end
	end

	end
end
hook.Add( "DoPlayerDeath", "ShadowDeathSounds", ShadowDeathSounds )

shadow_hurt_spam = false
local function ShadowHurtSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	if ply:Health() == 0 then return end
	if shadow_hurt_spam == true then return end

	shadow_hurt_spam = true
	timer.Create( "ShadowPly_SVD4_"..ply:SteamID(), 1, 1, function()
	shadow_hurt_spam = false
	end)

	if (ply:GetModel() == "models/cktheamazingfrog/player/shadow/shadow.mdl") then
	ply:EmitSound("dialog/shadow/hurt_" .. math.random( 1, 5 ) .. ".wav")
	end

	end
end
hook.Add( "PlayerHurt", "ShadowHurtSounds", ShadowHurtSounds )

hook.Add( "PlayerSpawn", "ShadowSetViewOffset2", function( ply )
timer.Create( "ShadowPly_SVD3_"..ply:SteamID(), 0.1, 1, function()
if (ply:GetModel() == "models/cktheamazingfrog/player/shadow/shadow.mdl") then
ply:EmitSound("dialog/shadow/spawn_" .. math.random( 1, 5 ) .. ".wav")
end

end)
end)
