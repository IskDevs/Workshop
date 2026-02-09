CreateConVar( "sv_hurtsounds", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"
CreateConVar( "sv_viewheight", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"


local function ShaggyDeathSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	
	if (ply:GetModel() == "models/cktheamazingfrog/player/shaggy/shaggy.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("dialog/shaggy/death_1.wav") else
		ply:EmitSound("dialog/shaggy/death_" .. math.random( 1, 3 ) .. ".wav") end
	end

	end
end
hook.Add( "DoPlayerDeath", "ShaggyDeathSounds", ShaggyDeathSounds )

shaggy_hurt_spam = false
local function ShaggyHurtSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	if ply:Health() == 0 then return end
	if shaggy_hurt_spam == true then return end

	shaggy_hurt_spam = true
	timer.Create( "ShaggyPly_SVD4_"..ply:SteamID(), 1, 1, function()
	shaggy_hurt_spam = false
	end)

	if (ply:GetModel() == "models/cktheamazingfrog/player/shaggy/shaggy.mdl") then
	ply:EmitSound("dialog/shaggy/hurt_" .. math.random( 1, 6 ) .. ".wav")
	end

	end
end
hook.Add( "PlayerHurt", "ShaggyHurtSounds", ShaggyHurtSounds )

hook.Add( "PlayerSpawn", "ShaggySetViewOffset2", function( ply )
timer.Create( "ShaggyPly_SVD3_"..ply:SteamID(), 0.1, 1, function()
if (ply:GetModel() == "models/cktheamazingfrog/player/shaggy/shaggy.mdl") then
ply:EmitSound("dialog/shaggy/spawn_" .. math.random( 1, 7 ) .. ".wav")
end

end)
end)
