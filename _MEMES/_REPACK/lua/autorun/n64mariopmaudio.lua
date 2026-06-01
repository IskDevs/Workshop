CreateConVar( "sv_n64voice", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_n64voice"
CreateConVar( "sv_n64footsteps", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_n64footsteps"

local function IsN64Mario(ply) -- Check to see if Mario's in play.
	local N64Mario = false
	if (ply:GetModel() == "models/rueven/n64/mario.mdl")
	or (ply:GetModel() == "models/rueven/n64/metalmario.mdl") then
		N64Mario = true
	end
	return N64Mario
end

local function IsN64Luigi(ply) -- Check to see if Luigi's in play.
	local N64Luigi = false
	if (ply:GetModel() == "models/rueven/n64/luigi.mdl") then
		N64Luigi = true
	end
	return N64Luigi
end

local function IsN64Character(ply)
	local N64 = false
	if IsN64Mario(ply)
	or IsN64Luigi(ply) then
		N64 = true
	end
	return N64
end

local function StopN64MarioVoice(ply) -- Only used once, but having a lot of lines dedicated to stopping voiceclips looks ugly.
	ply:StopSound("rueven/n64/mario/intro1.wav")
	ply:StopSound("rueven/n64/mario/intro2.wav")
	ply:StopSound("rueven/n64/mario/intro3.wav")
	ply:StopSound("rueven/n64/mario/intro4.wav")
	ply:StopSound("rueven/n64/mario/intro5.wav")
	ply:StopSound("rueven/n64/mario/intro6.wav")
	ply:StopSound("rueven/n64/mario/intro7.wav")
	ply:StopSound("rueven/n64/mario/intro8.wav")
	ply:StopSound("rueven/n64/mario/intro9.wav")
	ply:StopSound("rueven/n64/mario/intro10.wav")
	ply:StopSound("rueven/n64/mario/intro11.wav")
	ply:StopSound("rueven/n64/mario/intro12.wav")
	ply:StopSound("rueven/n64/mario/intro13.wav")
	ply:StopSound("rueven/n64/mario/intro14.wav")
	ply:StopSound("rueven/n64/mario/intro15.wav")
	ply:StopSound("rueven/n64/mario/intro16.wav")
	ply:StopSound("rueven/n64/mario/pain1.wav")
	ply:StopSound("rueven/n64/mario/pain2.wav")
	ply:StopSound("rueven/n64/mario/pain3.wav")
	ply:StopSound("rueven/n64/mario/pain4.wav")
	ply:StopSound("rueven/n64/mario/pain5.wav")
	ply:StopSound("rueven/n64/mario/pain6.wav")
	ply:StopSound("rueven/n64/mario/pain7.wav")
	ply:StopSound("rueven/n64/mario/pain8.wav")
	ply:StopSound("rueven/n64/mario/pain9.wav")
	ply:StopSound("rueven/n64/mario/pain10.wav")
	ply:StopSound("rueven/n64/mario/pain11.wav")
	ply:StopSound("rueven/n64/mario/pain12.wav")
	ply:StopSound("rueven/n64/mario/pain13.wav")
	ply:StopSound("rueven/n64/mario/pain14.wav")
	ply:StopSound("rueven/n64/mario/pain15.wav")
	ply:StopSound("rueven/n64/mario/pain16.wav")
	ply:StopSound("rueven/n64/mario/pain17.wav")
	ply:StopSound("rueven/n64/mario/pain18.wav")
	ply:StopSound("rueven/n64/mario/painwater1.wav")
	ply:StopSound("rueven/n64/mario/painwater2.wav")
	ply:StopSound("rueven/n64/mario/painwater3.wav")
	ply:StopSound("rueven/n64/mario/painwater4.wav")
	ply:StopSound("rueven/n64/mario/jump1.wav")
	ply:StopSound("rueven/n64/mario/jump2.wav")
	ply:StopSound("rueven/n64/mario/jump3.wav")
	ply:StopSound("rueven/n64/mario/jump4.wav")
	ply:StopSound("rueven/n64/mario/jump5.wav")
	ply:StopSound("rueven/n64/mario/jump6.wav")
	ply:StopSound("rueven/n64/mario/jump7.wav")
	ply:StopSound("rueven/n64/mario/jump8.wav")
	ply:StopSound("rueven/n64/mario/jump9.wav")
	ply:StopSound("rueven/n64/mario/jump10.wav")
	ply:StopSound("rueven/n64/mario/fall1.wav")
	ply:StopSound("rueven/n64/mario/fall2.wav")
	ply:StopSound("rueven/n64/mario/fall3.wav")
	ply:StopSound("rueven/n64/mario/fall4.wav")
	ply:StopSound("rueven/n64/mario/land1.wav")
	ply:StopSound("rueven/n64/mario/land2.wav")
	ply:StopSound("rueven/n64/mario/land3.wav")
	ply:StopSound("rueven/n64/mario/land4.wav")
	ply:StopSound("rueven/n64/mario/landrelief1.wav")
	ply:StopSound("rueven/n64/mario/landrelief2.wav")
	ply:StopSound("rueven/n64/mario/landrelief3.wav")
	ply:StopSound("rueven/n64/mario/landrelief4.wav")
	ply:StopSound("rueven/n64/mario/landwater1.wav")
	ply:StopSound("rueven/n64/mario/landwater2.wav")
	ply:StopSound("rueven/n64/mario/landwater3.wav")
	ply:StopSound("rueven/n64/mario/landwater4.wav")
	ply:StopSound("rueven/n64/mario/attack1.wav")
	ply:StopSound("rueven/n64/mario/attack2.wav")
	ply:StopSound("rueven/n64/mario/attack3.wav")
	ply:StopSound("rueven/n64/mario/attack4.wav")
	ply:StopSound("rueven/n64/mario/attack5.wav")
	ply:StopSound("rueven/n64/mario/attack6.wav")
	ply:StopSound("rueven/n64/mario/attack7.wav")
	ply:StopSound("rueven/n64/mario/attack8.wav")
	ply:StopSound("rueven/n64/mario/attack9.wav")
	ply:StopSound("rueven/n64/mario/attack10.wav")
	ply:StopSound("rueven/n64/mario/attack11.wav")
	ply:StopSound("rueven/n64/mario/attack12.wav")
	ply:StopSound("rueven/n64/mario/kill1.wav")
	ply:StopSound("rueven/n64/mario/kill2.wav")
	ply:StopSound("rueven/n64/mario/kill3.wav")
	ply:StopSound("rueven/n64/mario/kill4.wav")
	ply:StopSound("rueven/n64/mario/kill5.wav")
	ply:StopSound("rueven/n64/mario/kill6.wav")
	ply:StopSound("rueven/n64/mario/kill7.wav")
	ply:StopSound("rueven/n64/mario/kill8.wav")
	ply:StopSound("rueven/n64/mario/kill9.wav")
	ply:StopSound("rueven/n64/mario/kill10.wav")
	ply:StopSound("rueven/n64/mario/pickup1.wav")
	ply:StopSound("rueven/n64/mario/pickup2.wav")
	ply:StopSound("rueven/n64/mario/pickup3.wav")
	ply:StopSound("rueven/n64/mario/pickup4.wav")
	ply:StopSound("rueven/n64/mario/pickup5.wav")
	ply:StopSound("rueven/n64/mario/pickup6.wav")
	ply:StopSound("rueven/n64/mario/pickup7.wav")
	ply:StopSound("rueven/n64/mario/pickup8.wav")
	ply:StopSound("rueven/n64/mario/pickup9.wav")
	ply:StopSound("rueven/n64/mario/pickup10.wav")
	ply:StopSound("rueven/n64/mario/pickup11.wav")
	ply:StopSound("rueven/n64/mario/pickup12.wav")
	ply:StopSound("rueven/n64/mario/pickup13.wav")
	ply:StopSound("rueven/n64/mario/pickup14.wav")
	ply:StopSound("rueven/n64/mario/lift1.wav")
	ply:StopSound("rueven/n64/mario/lift2.wav")
	ply:StopSound("rueven/n64/mario/lift3.wav")
	ply:StopSound("rueven/n64/mario/lift4.wav")
	ply:StopSound("rueven/n64/mario/throw1.wav")
	ply:StopSound("rueven/n64/mario/throw2.wav")
	ply:StopSound("rueven/n64/mario/throw3.wav")
	ply:StopSound("rueven/n64/mario/throw4.wav")
end

local function StopN64LuigiVoice(ply) -- Same case as Mario.
	ply:StopSound("rueven/n64/luigi/intro1.wav")
	ply:StopSound("rueven/n64/luigi/intro2.wav")
	ply:StopSound("rueven/n64/luigi/intro3.wav")
	ply:StopSound("rueven/n64/luigi/intro4.wav")
	ply:StopSound("rueven/n64/luigi/intro5.wav")
	ply:StopSound("rueven/n64/luigi/intro6.wav")
	ply:StopSound("rueven/n64/luigi/intro7.wav")
	ply:StopSound("rueven/n64/luigi/intro8.wav")
	ply:StopSound("rueven/n64/luigi/intro9.wav")
	ply:StopSound("rueven/n64/luigi/intro10.wav")
	ply:StopSound("rueven/n64/luigi/intro11.wav")
	ply:StopSound("rueven/n64/luigi/intro12.wav")
	ply:StopSound("rueven/n64/luigi/intro13.wav")
	ply:StopSound("rueven/n64/luigi/intro14.wav")
	ply:StopSound("rueven/n64/luigi/intro15.wav")
	ply:StopSound("rueven/n64/luigi/intro16.wav")
	ply:StopSound("rueven/n64/luigi/pain1.wav")
	ply:StopSound("rueven/n64/luigi/pain2.wav")
	ply:StopSound("rueven/n64/luigi/pain3.wav")
	ply:StopSound("rueven/n64/luigi/pain4.wav")
	ply:StopSound("rueven/n64/luigi/pain5.wav")
	ply:StopSound("rueven/n64/luigi/pain6.wav")
	ply:StopSound("rueven/n64/luigi/pain7.wav")
	ply:StopSound("rueven/n64/luigi/pain8.wav")
	ply:StopSound("rueven/n64/luigi/pain9.wav")
	ply:StopSound("rueven/n64/luigi/pain10.wav")
	ply:StopSound("rueven/n64/luigi/pain11.wav")
	ply:StopSound("rueven/n64/luigi/pain12.wav")
	ply:StopSound("rueven/n64/luigi/pain13.wav")
	ply:StopSound("rueven/n64/luigi/pain14.wav")
	ply:StopSound("rueven/n64/luigi/pain15.wav")
	ply:StopSound("rueven/n64/luigi/pain16.wav")
	ply:StopSound("rueven/n64/luigi/pain17.wav")
	ply:StopSound("rueven/n64/luigi/pain18.wav")
	ply:StopSound("rueven/n64/luigi/painwater1.wav")
	ply:StopSound("rueven/n64/luigi/painwater2.wav")
	ply:StopSound("rueven/n64/luigi/painwater3.wav")
	ply:StopSound("rueven/n64/luigi/painwater4.wav")
	ply:StopSound("rueven/n64/luigi/jump1.wav")
	ply:StopSound("rueven/n64/luigi/jump2.wav")
	ply:StopSound("rueven/n64/luigi/jump3.wav")
	ply:StopSound("rueven/n64/luigi/jump4.wav")
	ply:StopSound("rueven/n64/luigi/jump5.wav")
	ply:StopSound("rueven/n64/luigi/jump6.wav")
	ply:StopSound("rueven/n64/luigi/jump7.wav")
	ply:StopSound("rueven/n64/luigi/jump8.wav")
	ply:StopSound("rueven/n64/luigi/jump9.wav")
	ply:StopSound("rueven/n64/luigi/jump10.wav")
	ply:StopSound("rueven/n64/luigi/fall1.wav")
	ply:StopSound("rueven/n64/luigi/fall2.wav")
	ply:StopSound("rueven/n64/luigi/fall3.wav")
	ply:StopSound("rueven/n64/luigi/fall4.wav")
	ply:StopSound("rueven/n64/luigi/land1.wav")
	ply:StopSound("rueven/n64/luigi/land2.wav")
	ply:StopSound("rueven/n64/luigi/land3.wav")
	ply:StopSound("rueven/n64/luigi/land4.wav")
	ply:StopSound("rueven/n64/luigi/landrelief1.wav")
	ply:StopSound("rueven/n64/luigi/landrelief2.wav")
	ply:StopSound("rueven/n64/luigi/landrelief3.wav")
	ply:StopSound("rueven/n64/luigi/landrelief4.wav")
	ply:StopSound("rueven/n64/luigi/landwater1.wav")
	ply:StopSound("rueven/n64/luigi/landwater2.wav")
	ply:StopSound("rueven/n64/luigi/landwater3.wav")
	ply:StopSound("rueven/n64/luigi/landwater4.wav")
	ply:StopSound("rueven/n64/luigi/attack1.wav")
	ply:StopSound("rueven/n64/luigi/attack2.wav")
	ply:StopSound("rueven/n64/luigi/attack3.wav")
	ply:StopSound("rueven/n64/luigi/attack4.wav")
	ply:StopSound("rueven/n64/luigi/attack5.wav")
	ply:StopSound("rueven/n64/luigi/attack6.wav")
	ply:StopSound("rueven/n64/luigi/attack7.wav")
	ply:StopSound("rueven/n64/luigi/attack8.wav")
	ply:StopSound("rueven/n64/luigi/attack9.wav")
	ply:StopSound("rueven/n64/luigi/attack10.wav")
	ply:StopSound("rueven/n64/luigi/attack11.wav")
	ply:StopSound("rueven/n64/luigi/attack12.wav")
	ply:StopSound("rueven/n64/luigi/kill1.wav")
	ply:StopSound("rueven/n64/luigi/kill2.wav")
	ply:StopSound("rueven/n64/luigi/kill3.wav")
	ply:StopSound("rueven/n64/luigi/kill4.wav")
	ply:StopSound("rueven/n64/luigi/kill5.wav")
	ply:StopSound("rueven/n64/luigi/kill6.wav")
	ply:StopSound("rueven/n64/luigi/kill7.wav")
	ply:StopSound("rueven/n64/luigi/kill8.wav")
	ply:StopSound("rueven/n64/luigi/kill9.wav")
	ply:StopSound("rueven/n64/luigi/kill10.wav")
	ply:StopSound("rueven/n64/luigi/pickup1.wav")
	ply:StopSound("rueven/n64/luigi/pickup2.wav")
	ply:StopSound("rueven/n64/luigi/pickup3.wav")
	ply:StopSound("rueven/n64/luigi/pickup4.wav")
	ply:StopSound("rueven/n64/luigi/pickup5.wav")
	ply:StopSound("rueven/n64/luigi/pickup6.wav")
	ply:StopSound("rueven/n64/luigi/pickup7.wav")
	ply:StopSound("rueven/n64/luigi/pickup8.wav")
	ply:StopSound("rueven/n64/luigi/pickup9.wav")
	ply:StopSound("rueven/n64/luigi/pickup10.wav")
	ply:StopSound("rueven/n64/luigi/pickup11.wav")
	ply:StopSound("rueven/n64/luigi/pickup12.wav")
	ply:StopSound("rueven/n64/luigi/pickup13.wav")
	ply:StopSound("rueven/n64/luigi/pickup14.wav")
	ply:StopSound("rueven/n64/luigi/lift1.wav")
	ply:StopSound("rueven/n64/luigi/lift2.wav")
	ply:StopSound("rueven/n64/luigi/lift3.wav")
	ply:StopSound("rueven/n64/luigi/lift4.wav")
	ply:StopSound("rueven/n64/luigi/throw1.wav")
	ply:StopSound("rueven/n64/luigi/throw2.wav")
	ply:StopSound("rueven/n64/luigi/throw3.wav")
	ply:StopSound("rueven/n64/luigi/throw4.wav")
end

local function GroundTrace(ply) -- The only way I got this shit to work.
	return util.TraceHull({
		start = ply:GetPos(),
		endpos = ply:GetPos() + ply:GetUp()*-10,
		maxs = ply:OBBMaxs(),
		mins = ply:OBBMins(),
		filter = ply,
		mask = MASK_SOLID,
	} )
end

local function SurfaceSound(ply) -- To anyone seeing this function: I'm sorry for the spaghetti.
	if GetConVarNumber( "sv_n64footsteps" ) == 1 and IsN64Character(ply) and ply:Health() > 0 and ply:Team() ~= TEAM_SLENDER then
		local ground = GroundTrace(ply)
		local material
		local volume = 0.25
		if ply:Crouching() then volume = 0.125 end
		if ply:IsSprinting() then volume = 0.5 end
		if (ply:GetModel() == "models/rueven/n64/metalmario.mdl") then material = "metalmariostep" -- Extremely braindead way to do this, but I don't fucking care at this point.
		else
			if (ply:GetMoveType() == 9) then material = "metal"
			elseif ground.SurfaceProps == 22 or ground.SurfaceProps == 25 or (ply:WaterLevel() > 0 and ply:WaterLevel() < 3) then material = "water"
			elseif ground.SurfaceProps == 9 or ground.SurfaceProps == 31 or ground.SurfaceProps == 33 or ground.SurfaceProps == 34 or ground.SurfaceProps == 100 then material = "dirt"
			elseif ground.SurfaceProps == 12 or ground.MatType == 79 then material = "grass"
			elseif ground.SurfaceProps == 54 or ground.SurfaceProps == 83 or ground.MatType == 78 then material = "sand"
			elseif ground.SurfaceProps == 23 then material = "slime"
			elseif ground.SurfaceProps == 45 then material = "ice"
			elseif ground.SurfaceProps == 44 or ground.MatType == 74 then material = "snow"
			elseif ground.SurfaceProps == 10 then material = "mud"
			elseif ground.SurfaceProps == 43 or ground.MatType == 66 or ground.MatType == 70 or ground.MatType == 72 then material = "flesh"
			elseif ground.SurfaceProps == 55 then material = "rubber"
			elseif ground.SurfaceProps == 46 then material = "carpet"
			elseif ground.SurfaceProps == 48 then material = "cardboard"
			elseif ground.SurfaceProps == 72 then material = "paper"
			elseif ground.SurfaceProps == 47 or ground.MatType == 76 or ground.MatType == 80 then material = "plastic"
			elseif ground.SurfaceProps == 13 or ground.SurfaceProps == 74 or ground.MatType == 84 then material = "tile"
			elseif ground.SurfaceProps == 7 then material = "vent"
			elseif ground.SurfaceProps == 6 or ground.MatType == 71 then material = "grate"
			elseif ground.SurfaceProps == 3 or ground.MatType == 77 then material = "metal"
			elseif ground.SurfaceProps == 19 then material = "woodsolid"
			elseif ground.SurfaceProps == 17 or ground.SurfaceProps == 18 or ground.SurfaceProps == 20 or ground.SurfaceProps == 21 then material = "woodweak"
			elseif ground.SurfaceProps == 14 or ground.MatType == 87 then material = "wood"
			elseif ground.SurfaceProps == 28 or ground.SurfaceProps == 32 or ground.MatType == 89 then material = "glass"
			else material = "concrete"
			end
		end
		if ply.mariorky_jump then
			if ply:WaterLevel() == 3 then
				if material == "dirt" or material == "grass" or material == "metal" or material == "grate" or material == "vent" or material == "carpet" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 55, 65 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 115, 125 ), 0.75, 4) end )
				elseif material == "snow" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 45, 55 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 115, 125 ), 0.75, 4) end )
				elseif material == "ice" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 5, 15 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 40, 50 ), 0.75, 4) end )
				else
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 35, 45 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 115, 125 ), 0.75, 4) end )
				end
			else
				if material == "dirt" or material == "grass" or material == "metal" or material == "grate" or material == "vent" or material == "carpet" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 95, 105 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 155, 165 ), 0.75, 4) end )
				elseif material == "snow" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 85, 95 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 155, 165 ), 0.75, 4) end )
				elseif material == "ice" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 45, 55 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 80, 90 ), 0.75, 4) end )
				elseif material == "metalmariostep" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 85, 95 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 145, 155 ), 0.75, 4) end )
				else
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 75, 85 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 155, 165 ), 0.75, 4) end )
				end
			end
		elseif ply.mariorky_land then
			if ply:WaterLevel() == 3 then
				if material == "dirt" or material == "grass" or material == "metal" or material == "grate" or material == "vent" or material == "carpet" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 115, 125 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 55, 65 ), 0.75, 4) end )
				elseif material == "snow" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 115, 125 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 45, 55 ), 0.75, 4) end )
				elseif material == "ice" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 40, 50 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 5, 15 ), 0.75, 4) end )
				elseif material == "wood" or material == "woodsolid" or material == "woodweak" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 85, 95 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 75, 85 ), 0.75, 4) end )
				else
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 115, 125 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 35, 45 ), 0.75, 4) end )
				end
			else
				if material == "dirt" or material == "grass" or material == "metal" or material == "grate" or material == "vent" or material == "carpet" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 155, 165 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 95, 105 ), 0.75, 4) end )
				elseif material == "snow" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 155, 165 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 85, 95 ), 0.75, 4) end )
				elseif material == "ice" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 80, 90 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 45, 55 ), 0.75, 4) end )
				elseif material == "wood" or material == "woodsolid" or material == "woodweak" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 125, 135 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 115, 125 ), 0.75, 4) end )
				elseif material == "metalmariostep" then
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 145, 155 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 85, 95 ), 0.75, 4) end )
				else
					ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 155, 165 ), 0.75, 4)
					timer.Simple( 0.1, function() ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 75, 85 ), 0.75, 4) end )
				end
			end
		else
			if ply:WaterLevel() == 3 then
				ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 55, 65 ), volume, 4)
			else
				ply:EmitSound("rueven/n64/footsteps/"..material..".wav", 100,  math.random( 95, 105 ), volume, 4)
			end
		end
	end
end

local ExpressionsTable = { -- Magic numbersus deletus.
	Neutral = 0,
	Jump = 1,
	Fall = 2,
	Land = 3,
	LandWater = 4,
	LandRelief = 5,
	Attack = 6,
	Kill = 7,
	Lift = 8,
	Throw = 9,
	WeaponPickup = 10,
	Pain = 11,
	PainWater = 12
}

local function N64MarioIntroSounds(ply)
	if GetConVarNumber( "sv_n64voice" ) == 1 then -- No character check here because of menus. Didn't cause many issues without it so it should be fine.
	ply.mariorky_fall_spam = false
	timer.Simple( 0.02, function()
	ply.mariorky_jump = false
	ply.mariorky_land = false
	ply.mariorky_spam = false -- Prevents stacking voiceclips when spawning.
	ply.mariorky_kill_voice = false
	ply.mariorky_face = ExpressionsTable.Neutral
	if IsN64Mario(ply) and ply:WaterLevel() < 3 and ply:Health() > 0 then
		ply:EmitSound("rueven/n64/mario/intro" .. math.random( 1, 16 ) .. ".wav", 100, 100, 1, 7)
	end
	if IsN64Luigi(ply) and ply:WaterLevel() < 3 and ply:Health() > 0 then
		ply:EmitSound("rueven/n64/luigi/intro" .. math.random( 1, 16 ) .. ".wav", 100, 100, 1, 7)
	end
	end)
end
end
hook.Add( "PlayerSpawn", "N64MarioIntroSounds", N64MarioIntroSounds )

local function N64MarioHurtSounds(ply, attacker, health, dmg )
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	if ply.pk_pill_ent ~= nil then return end
	if not ply:Alive() then return end
	if ply.mariorky_spam == true then return end
		
		if IsN64Mario(ply) then
			if ply:WaterLevel() == 3 then
				ply:EmitSound("rueven/n64/mario/painwater" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
				ply.mariorky_face = ExpressionsTable.PainWater
			else
				ply:EmitSound("rueven/n64/mario/pain" .. math.random( 1, 18 ) .. ".wav", 100, 100, 1, 7)
				ply.mariorky_face = ExpressionsTable.Pain
			end
			timer.Create( "N64CharPly"..ply:SteamID(), 0.5, 1, function() 
				if ply.mariorky_face == ExpressionsTable.Pain or ply.mariorky_face == ExpressionsTable.PainWater then 
					ply.mariorky_face = ExpressionsTable.Neutral 
				end 
			end)
		end
		
		if IsN64Luigi(ply) then
			if ply:WaterLevel() == 3 then
				ply:EmitSound("rueven/n64/luigi/painwater" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
				ply.mariorky_face = ExpressionsTable.PainWater
			else
				ply:EmitSound("rueven/n64/luigi/pain" .. math.random( 1, 18 ) .. ".wav", 100, 100, 1, 7)
				ply.mariorky_face = ExpressionsTable.Pain
			end
			timer.Create( "N64CharPly"..ply:SteamID(), 0.5, 1, function() 
				if ply.mariorky_face == ExpressionsTable.Pain or ply.mariorky_face == ExpressionsTable.PainWater then 
					ply.mariorky_face = ExpressionsTable.Neutral 
				end 
			end)
		end
	end
end
hook.Add( "PlayerHurt", "N64MarioHurtSounds", N64MarioHurtSounds )

local function N64MarioDeathSounds(ply)
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	ply.mariorky_spam = true
	ply.mariorky_kill_voice = true
	timer.Remove( "N64CharPly"..ply:SteamID() )
	if IsN64Mario(ply) then
		StopN64MarioVoice(ply)
		if ply:WaterLevel() == 3 then
			ply:EmitSound("rueven/n64/mario/drown.wav", 100, 100, 1, 7, 128)
		else
			ply:EmitSound("rueven/n64/mario/death" .. math.random( 1, 12 ) .. ".wav", 100, 100, 1, 7, 128)
		end
	end
	if IsN64Luigi(ply) then
		StopN64LuigiVoice(ply)
		if ply:WaterLevel() == 3 then
			ply:EmitSound("rueven/n64/luigi/drown.wav", 100, 100, 1, 7, 128)
		else
			ply:EmitSound("rueven/n64/luigi/death" .. math.random( 1, 12 ) .. ".wav", 100, 100, 1, 7, 128)
		end
	end
	end
end
hook.Add( "PlayerDeath", "N64MarioDeathSounds", N64MarioDeathSounds )

local function N64MarioDeathRagdollFace( ply, plyrag )
	if GetConVarNumber( "sv_n64voice" ) == 1 and ply:IsPlayer() and IsN64Character(ply) and plyrag:IsValid() then
		if IsN64Mario(ply) or IsN64Luigi(ply) then
			if ply:WaterLevel() == 3 then
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyebrowsAngry"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyebrowsHappy"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyebrowsSad"), 1)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyebrowsShock"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesShock"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthOpen"), 1)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthGrin"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthFrown"), 1)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthOh"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthShock"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthCheekPuff"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthWiden"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyelidsPain"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyelidsClose"), 0.75)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesShock"), 1)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesUp"), 1)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesDown"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesRight"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesLeft"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("LowerTeethHide"), 0)
			else
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyebrowsAngry"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyebrowsHappy"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyebrowsSad"), 1)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyebrowsShock"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesShock"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthOpen"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthGrin"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthFrown"), 1)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthOh"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthShock"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthCheekPuff"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("MouthWiden"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyelidsPain"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyelidsClose"), 1)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesUp"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesDown"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesRight"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("EyesLeft"), 0)
				plyrag:SetFlexWeight(plyrag:GetFlexIDByName("LowerTeethHide"), 0)
			end
		end
	end
end
hook.Add( "CreateClientsideRagdoll", "N64MarioDeathRagdollFace", N64MarioDeathRagdollFace )
hook.Add( "CreateEntityRagdoll", "N64MarioDeathRagdollFace", N64MarioDeathRagdollFace ) -- Just in case.

local function N64MarioJumpSounds(ply, speed)
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	if (CLIENT and not game.SinglePlayer() ) then return end
	if ply.pk_pill_ent ~= nil then return end
	if ply:Health() == 0 then return end
	if ply.mariorky_spam == true then return end
	
	if IsN64Mario(ply) then
		ply:EmitSound("rueven/n64/mario/jump" .. math.random( 1, 10 ) .. ".wav", 100, 100, 1, 7)
		ply.mariorky_face = ExpressionsTable.Jump
	end
	
	if IsN64Luigi(ply) then
		ply:EmitSound("rueven/n64/luigi/jump" .. math.random( 1, 10 ) .. ".wav", 100, 100, 1, 7)
		ply.mariorky_face = ExpressionsTable.Jump
	end
	
	ply.mariorky_jump = true
	SurfaceSound(ply)
	ply.mariorky_jump = false
	end
end
hook.Add( "OnPlayerJump", "N64MarioJumpSounds", N64MarioJumpSounds )

local function N64MarioFallSounds( ply )
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	if (CLIENT and not game.SinglePlayer() ) then return end
	if ply.pk_pill_ent ~= nil then return end
	if ply:Health() == 0 or not ply:IsValid() then timer.Remove( "N64CharPly"..ply:SteamID() ) return end
	if ply.mariorky_face ~= ExpressionsTable.Fall and not timer.Exists( "N64CharPly"..ply:SteamID() ) then ply.mariorky_fall_spam = false end
	if ply:WaterLevel() > 2 or (ply:GetMoveType() == MOVETYPE_NOCLIP) or (ply:GetMoveType() == MOVETYPE_LADDER) then
		if IsN64Mario(ply) and ply.mariorky_face == ExpressionsTable.Fall and ply.mariorky_fall_spam == true then
			ply.mariorky_face = ExpressionsTable.Neutral
			ply.mariorky_fall_spam = false;
			StopN64MarioVoice(ply);
		end
		if IsN64Luigi(ply) and ply.mariorky_face == ExpressionsTable.Fall and ply.mariorky_fall_spam == true then
			ply.mariorky_face = ExpressionsTable.Neutral
			ply.mariorky_fall_spam = false;
			StopN64LuigiVoice(ply);
		end
	return end
	if ply:IsOnGround() then 
		ply.mariorky_fall_spam = false 
		if ply.mariorky_face == ExpressionsTable.Fall then 
			ply.mariorky_face = ExpressionsTable.Neutral
			ply:StopSound("rueven/n64/mario/fall1.wav")
			ply:StopSound("rueven/n64/mario/fall2.wav")
			ply:StopSound("rueven/n64/mario/fall3.wav")
			ply:StopSound("rueven/n64/mario/fall4.wav")
			ply:StopSound("rueven/n64/luigi/fall1.wav")
			ply:StopSound("rueven/n64/luigi/fall2.wav")
			ply:StopSound("rueven/n64/luigi/fall3.wav")
			ply:StopSound("rueven/n64/luigi/fall4.wav")
		end
		if ply.mariorky_face == ExpressionsTable.Jump then ply.mariorky_face = ExpressionsTable.Neutral end
	return end
	if ply.mariorky_fall_spam == true then return end
	
	local RKYScreamSpeed
	
	if (gmod.GetGamemode().Name == "Trouble in Terrorist Town") then
		RKYScreamSpeed = -450
	else
		RKYScreamSpeed = -526.5
	end

	if IsN64Mario(ply) and ply:Alive() then
		if ply:GetVelocity().z <= RKYScreamSpeed then
			timer.Create( "N64CharPly"..ply:SteamID(), 10, 1, function()
			if ply.mariorky_face == ExpressionsTable.Fall then
				ply.mariorky_face = ExpressionsTable.Neutral
			end
			ply.mariorky_fall_spam = false
			end)
			ply:EmitSound("rueven/n64/mario/fall" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
			ply.mariorky_face = ExpressionsTable.Fall
			ply.mariorky_fall_spam = true
		end
	end
	
	if IsN64Luigi(ply) and ply:Alive() then
		if ply:GetVelocity().z <= RKYScreamSpeed then
			timer.Create( "N64CharPly"..ply:SteamID(), 10, 1, function()
			if ply.mariorky_face == ExpressionsTable.Fall then
				ply.mariorky_face = ExpressionsTable.Neutral
			end
			ply.mariorky_fall_spam = false
			end)
			ply:EmitSound("rueven/n64/luigi/fall" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
			ply.mariorky_face = ExpressionsTable.Fall
			ply.mariorky_fall_spam = true
		end
	end
	end
end
hook.Add( "PlayerPostThink", "N64MarioFallSounds", N64MarioFallSounds )

local function N64MarioLandSounds( ply, inWater, onFloater, speed )
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	if (CLIENT and not game.SinglePlayer() ) then return end
	if ply.pk_pill_ent ~= nil then return end
	if ply:Health() == 0 then timer.Remove( "N64CharPly"..ply:SteamID() ) return end
	if ply.mariorky_spam == true then return end
	
	local RKYScreamSpeed
	
	if (gmod.GetGamemode().Name == "Trouble in Terrorist Town") then
		RKYScreamSpeed = 450
	else
		RKYScreamSpeed = 526.5
	end
	
	ply.mariorky_land = true
	SurfaceSound(ply)
	ply.mariorky_land = false
	
	if speed > RKYScreamSpeed and not inWater then
		if IsN64Mario(ply) and ply.mariorky_face == ExpressionsTable.Fall then
			ply.mariorky_face = ExpressionsTable.Neutral
			ply:StopSound("rueven/n64/mario/fall1.wav")
			ply:StopSound("rueven/n64/mario/fall2.wav")
			ply:StopSound("rueven/n64/mario/fall3.wav")
			ply:StopSound("rueven/n64/mario/fall4.wav")
		elseif IsN64Luigi(ply) and ply.mariorky_face == ExpressionsTable.Fall then
			ply.mariorky_face = ExpressionsTable.Neutral
			ply:StopSound("rueven/n64/luigi/fall1.wav")
			ply:StopSound("rueven/n64/luigi/fall2.wav")
			ply:StopSound("rueven/n64/luigi/fall3.wav")
			ply:StopSound("rueven/n64/luigi/fall4.wav")
		end
	return end
	
	if IsN64Mario(ply) then
		if ply:GetBodyGroups ("040663") and speed < RKYScreamSpeed and ply.mariorky_fall_spam == true and not inWater then
			ply:EmitSound("rueven/n64/mario/landrelief" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
			ply.mariorky_face = ExpressionsTable.LandRelief
			timer.Create( "N64CharPly"..ply:SteamID(), 1, 1, function() if ply.mariorky_face == ExpressionsTable.LandRelief then ply.mariorky_face = ExpressionsTable.Neutral end end)
		else
			if speed > 300 then
				if not inWater and ply:WaterLevel() < 3 then
					ply:EmitSound("rueven/n64/mario/land" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
					ply.mariorky_face = ExpressionsTable.Land
					timer.Create( "N64CharPly"..ply:SteamID(), 0.5, 1, function() if ply.mariorky_face == ExpressionsTable.Land then ply.mariorky_face = ExpressionsTable.Neutral end end)
				else
					ply:EmitSound("rueven/n64/mario/landwater" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
					ply.mariorky_face = ExpressionsTable.LandWater
					timer.Create( "N64CharPly"..ply:SteamID(), 1, 1, function() if ply.mariorky_face == ExpressionsTable.LandWater then ply.mariorky_face = ExpressionsTable.Neutral end end)
				end
			end
		end
		if ply.mariorky_face == ExpressionsTable.Jump then ply.mariorky_face = ExpressionsTable.Neutral end
	end
	
	if IsN64Luigi(ply) then
		if ply:GetBodyGroups ("030664") and speed < RKYScreamSpeed and ply.mariorky_fall_spam == true and not inWater then
			ply:EmitSound("rueven/n64/luigi/landrelief" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
			ply.mariorky_face = ExpressionsTable.LandRelief
			timer.Create( "N64CharPly"..ply:SteamID(), 1, 1, function() if ply.mariorky_face == ExpressionsTable.LandRelief then ply.mariorky_face = ExpressionsTable.Neutral end end)
		else
			if speed > 300 then
				if not inWater and ply:WaterLevel() < 3 then
					ply:EmitSound("rueven/n64/luigi/land" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
					ply.mariorky_face = ExpressionsTable.Land
					timer.Create( "N64CharPly"..ply:SteamID(), 0.5, 1, function() if ply.mariorky_face == ExpressionsTable.Land then ply.mariorky_face = ExpressionsTable.Neutral end end)
				else
					ply:EmitSound("rueven/n64/luigi/landwater" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
					ply.mariorky_face = ExpressionsTable.LandWater
					timer.Create( "N64CharPly"..ply:SteamID(), 1, 1, function() if ply.mariorky_face == ExpressionsTable.LandWater then ply.mariorky_face = ExpressionsTable.Neutral end end)
				end
			end
		end
	end
	end
end
hook.Add( "OnPlayerHitGround", "N64MarioLandSounds", N64MarioLandSounds )

local function N64MarioAttackSounds(ply, event, data)
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	if ( CLIENT ) then return end
	if ply.pk_pill_ent ~= nil then return end
	if ply:Health() == 0 then timer.Remove( "N64CharPly"..ply:SteamID() ) return end
	if ply.mariorky_spam == true or ply.mariorky_kill_voice == true then return end
		local attack1Keys = bit.bor( IN_ATTACK, IN_GRENADE1, IN_WEAPON1 )
		local attack2Keys = bit.bor( IN_ATTACK2, IN_GRENADE2, IN_WEAPON2 )
		if (ply:KeyDown( attack1Keys ) or ply:KeyDown( attack2Keys )) and not (ply:KeyPressed( attack1Keys ) or ply:KeyPressed( attack2Keys )) then return end
		if (event == PLAYERANIMEVENT_ATTACK_PRIMARY or event == PLAYERANIMEVENT_ATTACK_SECONDARY or event == PLAYERANIMEVENT_ATTACK_GRENADE) then
		
			timer.Create( "N64CharPly"..ply:SteamID(), 1, 1, function() if ply.mariorky_face == ExpressionsTable.Attack then ply.mariorky_face = ExpressionsTable.Neutral end end)
			
			if IsN64Mario(ply) then
				if ply:WaterLevel() == 3 then
				ply:EmitSound("rueven/n64/mario/attackwater.wav", 100, 100, 1, 7)
				else
				ply:EmitSound("rueven/n64/mario/attack" .. math.random( 1, 12 ) .. ".wav", 100, 100, 1, 7)
				end
				ply.mariorky_face = ExpressionsTable.Attack
			end
			
			if IsN64Luigi(ply) then
				if ply:WaterLevel() == 3 then
				ply:EmitSound("rueven/n64/luigi/attackwater.wav", 100, 100, 1, 7)
				else
				ply:EmitSound("rueven/n64/luigi/attack" .. math.random( 1, 12 ) .. ".wav", 100, 100, 1, 7)
				end
				ply.mariorky_face = ExpressionsTable.Attack
			end
		end
	end
end
hook.Add( "DoAnimationEvent", "N64MarioAttackSounds", N64MarioAttackSounds )

local function N64MarioLiftSounds( ply, ent )
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	if ( CLIENT ) then return end
	if ply.pk_pill_ent ~= nil then return end
	if ply:Health() == 0 or ply:WaterLevel() == 3 then timer.Remove( "N64CharPly") return end
	if ply.mariorky_spam == true then return end
	
	timer.Create( "N64CharPly"..ply:SteamID(), 0.5, 1, function() if ply.mariorky_face == ExpressionsTable.Lift then ply.mariorky_face = ExpressionsTable.Neutral end end)
	
	if IsN64Mario(ply) then
		ply:EmitSound("rueven/n64/mario/lift" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
		ply.mariorky_face = ExpressionsTable.Lift
	end
	
	if IsN64Luigi(ply) then
		ply:EmitSound("rueven/n64/luigi/lift" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
		ply.mariorky_face = ExpressionsTable.Lift
	end
	end
end
hook.Add( "OnPlayerPhysicsPickup", "N64MarioLiftSounds", N64MarioLiftSounds )

local function N64MarioThrowSounds( ply, ent, thrown )
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	if ( CLIENT ) then return end
	if ply.pk_pill_ent ~= nil then return end
	if ply:Health() == 0 then return end
	if ply.mariorky_spam == true then return end
	
		if thrown then
		
			timer.Create( "N64CharPly"..ply:SteamID(), 0.5, 1, function() if ply.mariorky_face == ExpressionsTable.Attack or ply.mariorky_face == ExpressionsTable.Throw then ply.mariorky_face = ExpressionsTable.Neutral end end)
			
			if IsN64Mario(ply) then
				if ply:WaterLevel() == 3 then
				ply:EmitSound("rueven/n64/mario/attackwater.wav", 100, 100, 1, 7)
				ply.mariorky_face = ExpressionsTable.Attack
				else
				ply:EmitSound("rueven/n64/mario/throw" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
				ply.mariorky_face = ExpressionsTable.Throw
				end
			end
			
			if IsN64Luigi(ply) then
				if ply:WaterLevel() == 3 then
				ply:EmitSound("rueven/n64/luigi/attackwater.wav", 100, 100, 1, 7)
				ply.mariorky_face = ExpressionsTable.Attack
				else
				ply:EmitSound("rueven/n64/luigi/throw" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 7)
				ply.mariorky_face = ExpressionsTable.Throw
				end
			end
		end
	end
end
hook.Add( "OnPlayerPhysicsDrop", "N64MarioThrowSounds", N64MarioThrowSounds )

local function N64MarioKillSounds( victim, attacker )
	if GetConVarNumber( "sv_n64voice" ) == 1 and attacker:IsValid() then
	if victim == attacker then return end
	if not attacker:IsPlayer() then return end
	if not IsN64Character(attacker) then return end
	if attacker:Health() == 0 or attacker:WaterLevel() == 3 then return end
	if attacker.pk_pill_ent ~= nil then return end
	if attacker.mariorky_spam == true then return end
	attacker.mariorky_kill_voice = true
	timer.Create( "N64CharPly"..attacker:SteamID(), 2, 1, function()
	if attacker.mariorky_face == ExpressionsTable.Kill then attacker.mariorky_face = ExpressionsTable.Neutral end
	end)
	
	timer.Simple( 0.1, function() attacker.mariorky_kill_voice = false end )
	
	if IsN64Mario(attacker) then
		attacker:EmitSound("rueven/n64/mario/kill" .. math.random( 1, 10 ) .. ".wav", 100, 100, 1, 7)
		attacker.mariorky_face = ExpressionsTable.Kill
	end
	
	if IsN64Luigi(attacker) then
		attacker:EmitSound("rueven/n64/luigi/kill" .. math.random( 1, 10 ) .. ".wav", 100, 100, 1, 7)
		attacker.mariorky_face = ExpressionsTable.Kill
	end
	end
end
hook.Add( "DoPlayerDeath", "N64MarioKillSounds", N64MarioKillSounds )
hook.Add( "OnNPCKilled", "N64MarioKillSounds", N64MarioKillSounds )

local function N64MarioPickupSounds( weapon, ply )
	if GetConVarNumber( "sv_n64voice" ) == 1 and IsN64Character(ply) then
	if ply:WaterLevel() == 3 then return end
	if ply.pk_pill_ent ~= nil then return end
	if ply.mariorky_spam == true then return end
	
	timer.Create( "N64CharPly"..ply:SteamID(), 2, 1, function() if ply.mariorky_face == ExpressionsTable.WeaponPickup then ply.mariorky_face = ExpressionsTable.Neutral end end)

	if IsN64Mario(ply) then
		ply:EmitSound("rueven/n64/mario/pickup" .. math.random( 1, 14 ) .. ".wav", 100, 100, 1, 7)
		ply.mariorky_face = ExpressionsTable.WeaponPickup
	end
	
	if IsN64Luigi(ply) then
		ply:EmitSound("rueven/n64/luigi/pickup" .. math.random( 1, 14 ) .. ".wav", 100, 100, 1, 7)
		ply.mariorky_face = ExpressionsTable.WeaponPickup
	end
	end
end
hook.Add( "WeaponEquip", "N64MarioPickupSounds", N64MarioPickupSounds )

local function N64MarioFacialAnimation(ply)
	if ply.blinktimer == nil then ply.blinktimer = 0 end
	if IsN64Mario(ply) or IsN64Luigi(ply) and ply:Health() > 0 then -- You want code vomit? Firstly, here you go! Secondly, why?
		if ( CLIENT ) then
			ply:SetFlexWeight(ply:GetFlexIDByName("EyesRight"), math.Clamp(((ply:GetPoseParameter("head_yaw")-0.5)*-3.5), 0, 1))
			ply:SetFlexWeight(ply:GetFlexIDByName("EyesUp"), math.Clamp( ((ply:GetPoseParameter("head_pitch")-0.5)*-2), 0, 1))
			ply:SetFlexWeight(ply:GetFlexIDByName("EyesDown"), math.Clamp( ((ply:GetPoseParameter("head_pitch")-0.5)*2), 0, 1))
			ply:SetFlexWeight(ply:GetFlexIDByName("EyesLeft"), math.Clamp(((ply:GetPoseParameter("head_yaw")-0.5)*3.5), 0, 1))
		end
		if ( SERVER ) then
			local change = 0.1
			local blinkbool = false
			if IsN64Mario(ply) then
				if (CurTime() % 1.6 > 1.4) and ply.blinktimer == 0 then ply.blinktimer = math.random(36, 128); end
			elseif IsN64Luigi(ply) then
				if (CurTime() % 1.3 > 1.2) and ply.blinktimer == 0 then ply.blinktimer = math.random(36, 128); end
			end
			if ply.blinktimer > 0 then ply.blinktimer = ply.blinktimer - 1 end
			if IsN64Mario(ply) then
				if ply.blinktimer > 0 and ((ply.blinktimer > 24 and ply.blinktimer < 36) or ply.blinktimer < 12) then blinkbool = true end
			elseif IsN64Luigi(ply) then
				if ply.blinktimer > 0 and (ply.blinktimer < 12) then blinkbool = true; change = 0.2 end
			end
			if ply.mariorky_face == ExpressionsTable.Jump then -- Jump
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				if ply:WaterLevel() > 2 or (ply:GetMoveType() == MOVETYPE_NOCLIP) or (ply:GetMoveType() == MOVETYPE_LADDER) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
					if ply:WaterLevel() == 3 then 
						ply:SetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"))), 1, change))
					else
						ply:SetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"))), 0, change))
					end
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				if blinkbool then 
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 1, change))
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 1, change))
			elseif ply.mariorky_face == ExpressionsTable.Fall then -- Fall
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 1, change))
				elseif IsN64Luigi(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 1, change))
			elseif ply.mariorky_face == ExpressionsTable.Land then -- Land
				change = 0.2
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				elseif IsN64Luigi(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0.2, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
			elseif ply.mariorky_face == ExpressionsTable.LandWater then -- Land Water
				change = 0.2
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0.5, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 1, change))
				elseif IsN64Luigi(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
			elseif ply.mariorky_face == ExpressionsTable.LandRelief then -- Land Relief
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))	
			elseif ply.mariorky_face == ExpressionsTable.Attack then -- Attack/Underwater Throw
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				elseif IsN64Luigi(ply) then
					if ply:WaterLevel() < 3 then 
						ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 1, change))
					else
						ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
					end
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				if ply:WaterLevel() == 3 then 
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"))), 1, change))
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"))), 0, change))
				end
				if blinkbool then 
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 1, change))
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
			elseif ply.mariorky_face == ExpressionsTable.Kill then -- Kill
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0.2, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0.2, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 1, change))
				elseif IsN64Luigi(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0.25, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				if blinkbool then 
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 1, change))
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
			elseif ply.mariorky_face == ExpressionsTable.Lift then -- Lift
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 1.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 1.5, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				elseif IsN64Luigi(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0.5, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0.5, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0.75, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
			elseif ply.mariorky_face == ExpressionsTable.Throw then -- Throw
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 2, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				if blinkbool then 
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 1, change))
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
			elseif ply.mariorky_face == ExpressionsTable.WeaponPickup then -- Weapon Pickup
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 1, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0.5, change))
				elseif IsN64Luigi(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 1, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				if blinkbool then 
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 1, change))
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
			elseif ply.mariorky_face == ExpressionsTable.Pain then -- Pain
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 1, change))
				elseif IsN64Luigi(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 1, change))
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 1, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 1, change))
			elseif ply.mariorky_face == ExpressionsTable.PainWater then -- Underwater Pain
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 1.5, change))
				if IsN64Mario(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				elseif IsN64Luigi(ply) then
					ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 1, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0.5, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 1, change))
			else -- Neutral
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsAngry"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsHappy"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsSad"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyebrowsShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyesShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyesShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOpen"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOpen"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthGrin"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthGrin"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthFrown"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthFrown"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthOh"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthOh"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthF/V"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthF/V"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthShock"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthShock"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("MouthWiden"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthWiden"))), 0, change))
				ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsPain"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsPain"))), 0, change))
				if ply:WaterLevel() == 3 then 
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"))), 1, change))
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("MouthCheekPuff"))), 0, change))
				end
				if blinkbool then 
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 1, change))
				else
					ply:SetFlexWeight(ply:GetFlexIDByName("EyelidsClose"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("EyelidsClose"))), 0, change))
				end
				ply:SetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"), math.Approach((ply:GetFlexWeight(ply:GetFlexIDByName("LowerTeethHide"))), 0, change))
			end
		end
	end
end
hook.Add( "UpdateAnimation", "N64MarioFacialAnimation", N64MarioFacialAnimation )

hook.Add( "PlayerFootstep", "N64MarioStep", function( ply, pos, foot, sound, volume, rf )
	if GetConVarNumber( "sv_n64voice" ) == 1 and GetConVarNumber( "sv_n64footsteps" ) == 1 and IsN64Character(ply) then
		if (CLIENT and not game.SinglePlayer() ) then return end
		if ply.pk_pill_ent ~= nil or ply:Team() == TEAM_SLENDER then return end
		if ply.mariorky_land == false and ply.mariorky_jump == false then
			SurfaceSound(ply)
		end
	return true end
end )