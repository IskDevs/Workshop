CreateConVar( "sv_hurtsounds", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"
CreateConVar( "sv_viewheight", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"


local function SonicDeathSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	
	if (ply:GetModel() == "models/luria/sonic_adventure/sonic.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("Sonic_Adventure/Sonic/drown.wav") else
		ply:EmitSound("Sonic_Adventure/Sonic/death" .. math.random( 1, 3 ) .. ".wav") end
	end


	if (ply:GetModel() == "models/luria/sonic_adventure/tails.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("Sonic_Adventure/tails/drown.wav") else
		ply:EmitSound("Sonic_Adventure/tails/death" .. math.random( 1, 10 ) .. ".wav") end
	end


	if (ply:GetModel() == "models/luria/sonic_adventure/knuckles.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("Sonic_Adventure/knuckles/drown.wav") else
		ply:EmitSound("Sonic_Adventure/knuckles/death" .. math.random( 1, 3 ) .. ".wav") end
	end


	if (ply:GetModel() == "models/luria/sonic_adventure/amy.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("Sonic_Adventure/amy/drown.wav") else
		ply:EmitSound("Sonic_Adventure/amy/death" .. math.random( 1, 8 ) .. ".wav") end
	end

	end
end
hook.Add( "DoPlayerDeath", "SonicDeathSounds", SonicDeathSounds )

hurt_spam = false
local function SonicHurtSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	if ply:Health() == 0 then return end
	if hurt_spam == true then return end

	hurt_spam = true
	timer.Create( "SonicPly_SVD4_"..ply:SteamID(), 1, 1, function()
	hurt_spam = false
	end)

	if (ply:GetModel() == "models/luria/sonic_adventure/sonic.mdl") then
	ply:EmitSound("Sonic_Adventure/Sonic/pain" .. math.random( 1, 5 ) .. ".wav")
	end

	if (ply:GetModel() == "models/luria/sonic_adventure/tails.mdl") then
	ply:EmitSound("Sonic_Adventure/tails/pain" .. math.random( 1, 5 ) .. ".wav")
	end

	if (ply:GetModel() == "models/luria/sonic_adventure/knuckles.mdl") then
	ply:EmitSound("Sonic_Adventure/knuckles/pain" .. math.random( 1, 5 ) .. ".wav")
	end

	if (ply:GetModel() == "models/luria/sonic_adventure/amy.mdl") then
	ply:EmitSound("Sonic_Adventure/Amy/pain" .. math.random( 1, 11 ) .. ".wav")
	end
	
	end
end
hook.Add( "PlayerHurt", "SonicHurtSounds", SonicHurtSounds )

hook.Add( "PlayerSpawn", "SonicSetViewOffset2", function( ply )
timer.Create( "SonicPly_SVD3_"..ply:SteamID(), 0.1, 1, function()
if (ply:GetModel() == "models/luria/sonic_adventure/sonic.mdl") then
ply:EmitSound("Sonic_Adventure/Sonic/intro" .. math.random( 1, 14 ) .. ".wav")
end

if (ply:GetModel() == "models/luria/sonic_adventure/tails.mdl") then
ply:EmitSound("Sonic_Adventure/tails/intro" .. math.random( 1, 17 ) .. ".wav")
end

if (ply:GetModel() == "models/luria/sonic_adventure/knuckles.mdl") then
ply:EmitSound("Sonic_Adventure/knuckles/intro" .. math.random( 1, 25 ) .. ".wav")
end

if (ply:GetModel() == "models/luria/sonic_adventure/amy.mdl") then
ply:EmitSound("Sonic_Adventure/amy/intro" .. math.random( 1, 19 ) .. ".wav")
end
end)
end)
	
hook.Add( "PlayerSpawn", "SonicSetViewOffset3", function( ply )
		timer.Create( "SonicPly_"..ply:SteamID(), 0.1, 1, function()
			if (ply:GetModel() == "models/luria/sonic_adventure/sonic.mdl") || (ply:GetModel() == "models/luria/sonic_adventure/tails.mdl") || (ply:GetModel() == "models/luria/sonic_adventure/knuckles.mdl") || (ply:GetModel() == "models/luria/sonic_adventure/amy.mdl") then 
			if GetConVarNumber( "sv_viewheight" ) == 1 then
			ply:SetViewOffset( Vector( 0, 0, 40 ) )
			ply:SetViewOffsetDucked( Vector( 0, 0, 28 ) ) end
			else
			ply:SetViewOffset( Vector( 0, 0, 64 ) )
			ply:SetViewOffsetDucked( Vector( 0, 0, 28 ) )
			end
	end )
end )