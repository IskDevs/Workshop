CreateConVar( "sv_n64voice", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_n64voice"

local function IsN64Mario(npc) -- Check to see if Mario's in play.
	local N64Mario = false
	if (npc:GetModel() == "models/rueven/n64/npc/mario.mdl")
	or (npc:GetModel() == "models/rueven/n64/npc/metalmario.mdl") then
		N64Mario = true
	end
	return N64Mario
end

local function IsN64Luigi(npc) -- Check to see if Mario's in play.
	local N64Luigi = false
	if (npc:GetModel() == "models/rueven/n64/npc/luigi.mdl") then
		N64Luigi = true
	end
	return N64Luigi
end

local function IsN64Character(npc)
	local N64 = false
	if IsN64Mario(npc)
	or IsN64Luigi(npc) then
		N64 = true
	end
	return N64
end

local function StopN64MarioVoice(npc)
	npc:StopSound("rueven/n64/mario/intro1.wav")
	npc:StopSound("rueven/n64/mario/intro2.wav")
	npc:StopSound("rueven/n64/mario/intro3.wav")
	npc:StopSound("rueven/n64/mario/intro4.wav")
	npc:StopSound("rueven/n64/mario/intro5.wav")
	npc:StopSound("rueven/n64/mario/intro6.wav")
	npc:StopSound("rueven/n64/mario/intro7.wav")
	npc:StopSound("rueven/n64/mario/intro8.wav")
	npc:StopSound("rueven/n64/mario/intro9.wav")
	npc:StopSound("rueven/n64/mario/intro10.wav")
	npc:StopSound("rueven/n64/mario/intro11.wav")
	npc:StopSound("rueven/n64/mario/intro12.wav")
	npc:StopSound("rueven/n64/mario/intro13.wav")
	npc:StopSound("rueven/n64/mario/intro14.wav")
	npc:StopSound("rueven/n64/mario/intro15.wav")
	npc:StopSound("rueven/n64/mario/intro16.wav")
	npc:StopSound("rueven/n64/mario/pain1.wav")
	npc:StopSound("rueven/n64/mario/pain2.wav")
	npc:StopSound("rueven/n64/mario/pain3.wav")
	npc:StopSound("rueven/n64/mario/pain4.wav")
	npc:StopSound("rueven/n64/mario/pain5.wav")
	npc:StopSound("rueven/n64/mario/pain6.wav")
	npc:StopSound("rueven/n64/mario/pain7.wav")
	npc:StopSound("rueven/n64/mario/pain8.wav")
	npc:StopSound("rueven/n64/mario/pain9.wav")
	npc:StopSound("rueven/n64/mario/pain10.wav")
	npc:StopSound("rueven/n64/mario/pain11.wav")
	npc:StopSound("rueven/n64/mario/pain12.wav")
	npc:StopSound("rueven/n64/mario/pain13.wav")
	npc:StopSound("rueven/n64/mario/pain14.wav")
	npc:StopSound("rueven/n64/mario/pain15.wav")
	npc:StopSound("rueven/n64/mario/pain16.wav")
	npc:StopSound("rueven/n64/mario/pain17.wav")
	npc:StopSound("rueven/n64/mario/pain18.wav")
	npc:StopSound("rueven/n64/mario/painwater1.wav")
	npc:StopSound("rueven/n64/mario/painwater2.wav")
	npc:StopSound("rueven/n64/mario/painwater3.wav")
	npc:StopSound("rueven/n64/mario/painwater4.wav")
end

local function StopN64LuigiVoice(npc)
	npc:StopSound("rueven/n64/luigi/intro1.wav")
	npc:StopSound("rueven/n64/luigi/intro2.wav")
	npc:StopSound("rueven/n64/luigi/intro3.wav")
	npc:StopSound("rueven/n64/luigi/intro4.wav")
	npc:StopSound("rueven/n64/luigi/intro5.wav")
	npc:StopSound("rueven/n64/luigi/intro6.wav")
	npc:StopSound("rueven/n64/luigi/intro7.wav")
	npc:StopSound("rueven/n64/luigi/intro8.wav")
	npc:StopSound("rueven/n64/luigi/intro9.wav")
	npc:StopSound("rueven/n64/luigi/intro10.wav")
	npc:StopSound("rueven/n64/luigi/intro11.wav")
	npc:StopSound("rueven/n64/luigi/intro12.wav")
	npc:StopSound("rueven/n64/luigi/intro13.wav")
	npc:StopSound("rueven/n64/luigi/intro14.wav")
	npc:StopSound("rueven/n64/luigi/intro15.wav")
	npc:StopSound("rueven/n64/luigi/intro16.wav")
	npc:StopSound("rueven/n64/luigi/pain1.wav")
	npc:StopSound("rueven/n64/luigi/pain2.wav")
	npc:StopSound("rueven/n64/luigi/pain3.wav")
	npc:StopSound("rueven/n64/luigi/pain4.wav")
	npc:StopSound("rueven/n64/luigi/pain5.wav")
	npc:StopSound("rueven/n64/luigi/pain6.wav")
	npc:StopSound("rueven/n64/luigi/pain7.wav")
	npc:StopSound("rueven/n64/luigi/pain8.wav")
	npc:StopSound("rueven/n64/luigi/pain9.wav")
	npc:StopSound("rueven/n64/luigi/pain10.wav")
	npc:StopSound("rueven/n64/luigi/pain11.wav")
	npc:StopSound("rueven/n64/luigi/pain12.wav")
	npc:StopSound("rueven/n64/luigi/pain13.wav")
	npc:StopSound("rueven/n64/luigi/pain14.wav")
	npc:StopSound("rueven/n64/luigi/pain15.wav")
	npc:StopSound("rueven/n64/luigi/pain16.wav")
	npc:StopSound("rueven/n64/luigi/pain17.wav")
	npc:StopSound("rueven/n64/luigi/pain18.wav")
	npc:StopSound("rueven/n64/luigi/painwater1.wav")
	npc:StopSound("rueven/n64/luigi/painwater2.wav")
	npc:StopSound("rueven/n64/luigi/painwater3.wav")
	npc:StopSound("rueven/n64/luigi/painwater4.wav")
	npc:StopSound("rueven/n64/luigi/kill1.wav")
	npc:StopSound("rueven/n64/luigi/kill2.wav")
	npc:StopSound("rueven/n64/luigi/kill3.wav")
	npc:StopSound("rueven/n64/luigi/kill4.wav")
	npc:StopSound("rueven/n64/luigi/kill5.wav")
	npc:StopSound("rueven/n64/luigi/kill6.wav")
	npc:StopSound("rueven/n64/luigi/kill7.wav")
	npc:StopSound("rueven/n64/luigi/kill8.wav")
	npc:StopSound("rueven/n64/luigi/kill9.wav")
	npc:StopSound("rueven/n64/luigi/kill10.wav")
end

local ExpressionsTable = { -- Magic numbersus deletus.
	Neutral = 0,
	Pain = 1,
	PainWater = 2,
	Kill = 3,
}

local function N64MarioNPCSpawn ( ply, npc )
	if GetConVarNumber( "sv_n64voice" ) == 1 then
	if IsN64Mario(npc) and npc:WaterLevel() < 3 then
		npc:SetBodygroup(2, math.random( 0, 5 ) )
		npc:EmitSound("rueven/n64/mario/intro" .. math.random( 1, 16 ) .. ".wav", 100, 100, 1, 2)
	end
	if IsN64Luigi(npc) and npc:WaterLevel() < 3 then
		npc:SetBodygroup(2, math.random( 0, 5 ) )
		npc:EmitSound("rueven/n64/luigi/intro" .. math.random( 1, 16 ) .. ".wav", 100, 100, 1, 2)
	end
	end
end
hook.Add( "PlayerSpawnedNPC", "N64MarioNPCSpawn", N64MarioNPCSpawn )

local function N64MarioNPCHurt ( npc, dmg )
	if GetConVarNumber( "sv_n64voice" ) == 1 then
	if not npc:IsNPC() and not IsN64Character(npc) then return end
	if dmg:GetDamage() > npc:Health() or not npc:Alive() then return end

	if IsN64Mario(npc) then
		if npc:WaterLevel() == 3 then
		npc.mariorky_face = ExpressionsTable.PainWater
		npc:EmitSound("rueven/n64/mario/painwater" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 2)
		else
		npc.mariorky_face = ExpressionsTable.Pain
		npc:EmitSound("rueven/n64/mario/pain" .. math.random( 1, 18 ) .. ".wav", 100, 100, 1, 2)
		end
		timer.Create( "N64CharNPC", 0.5, 1, function() npc.mariorky_face = ExpressionsTable.Neutral end )
	end
	if IsN64Luigi(npc) then
		if npc:WaterLevel() == 3 then
		npc.mariorky_face = ExpressionsTable.PainWater
		npc:EmitSound("rueven/n64/luigi/painwater" .. math.random( 1, 4 ) .. ".wav", 100, 100, 1, 2)
		else
		npc.mariorky_face = ExpressionsTable.Pain
		npc:EmitSound("rueven/n64/luigi/pain" .. math.random( 1, 18 ) .. ".wav", 100, 100, 1, 2)
		end
		timer.Create( "N64CharNPC", 0.5, 1, function() npc.mariorky_face = ExpressionsTable.Neutral end )
	end
end
end
hook.Add( "EntityTakeDamage", "N64MarioNPCHurt", N64MarioNPCHurt )

local function N64MarioNPCDeathKill(npc, attacker)
	if not npc:IsNPC() and not attacker:IsNPC() then return end
	if GetConVarNumber( "sv_n64voice" ) == 1 then
		if IsN64Mario(npc) then
			StopN64MarioVoice(npc)
			if npc:WaterLevel() == 3 then
			npc:EmitSound("rueven/n64/mario/drown.wav", 100, 100, 1, 2, 128)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthFrown"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsPain"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), 0.75)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesUp"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesDown"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesRight"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesLeft"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), 0) 
			else
			npc:EmitSound("rueven/n64/mario/death" .. math.random( 1, 12 ) .. ".wav", 100, 100, 1, 2, 128)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthFrown"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsPain"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesUp"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesDown"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesRight"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesLeft"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), 0) 
			end
		end
		if IsN64Luigi(npc) then
			StopN64LuigiVoice(npc)
			if npc:WaterLevel() == 3 then
			npc:EmitSound("rueven/n64/luigi/drown.wav", 100, 100, 1, 2, 128)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthGrin"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthFrown"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthWiden"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsPain"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), 0.75)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesUp"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesDown"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesRight"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesLeft"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), 0) 
			else
			npc:EmitSound("rueven/n64/luigi/death" .. math.random( 1, 12 ) .. ".wav", 100, 100, 1, 2, 128)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthGrin"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthFrown"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthWiden"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsPain"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), 1)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesUp"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesDown"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesRight"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("EyesLeft"), 0)
			npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), 0)
			end
		end
		if attacker:IsNPC() and attacker:WaterLevel() ~= 3 then
			if IsN64Mario(attacker) then
				attacker.mariorky_face = ExpressionsTable.Kill
				attacker:EmitSound("rueven/n64/mario/kill" .. math.random( 1, 10 ) .. ".wav", 100, 100, 1, 2)
				timer.Create( "N64CharNPC", 2, 1, function()
				attacker.mariorky_face = ExpressionsTable.Neutral
				end)
			end
			if IsN64Luigi(attacker) then
				attacker.mariorky_face = ExpressionsTable.Kill
				attacker:EmitSound("rueven/n64/luigi/kill" .. math.random( 1, 10 ) .. ".wav", 100, 100, 1, 2)
				timer.Create( "N64CharNPC", 2, 1, function()
				attacker.mariorky_face = ExpressionsTable.Neutral
				end)
			end
		end
			
	end
end
hook.Add( "OnNPCKilled", "N64MarioNPCDeathKill", N64MarioNPCDeathKill )
hook.Add( "DoPlayerDeath", "N64MarioNPCDeathKill", N64MarioNPCDeathKill )

local function N64MarioFacialAnimation(npc)
	if ( CLIENT ) then
		for _, npc in pairs(ents.FindByClass("npc_*")) do
			if IsValid(npc) and IsN64Character(npc) and npc:Health() > 0 then
				npc:SetFlexWeight(npc:GetFlexIDByName("EyesRight"), math.Clamp(((npc:GetPoseParameter("head_yaw")-0.5)*-3.5), 0, 1))
				npc:SetFlexWeight(npc:GetFlexIDByName("EyesUp"), math.Clamp( ((npc:GetPoseParameter("head_pitch")-0.5)*-2), 0, 1))
				npc:SetFlexWeight(npc:GetFlexIDByName("EyesDown"), math.Clamp( ((npc:GetPoseParameter("head_pitch")-0.5)*2), 0, 1))
				npc:SetFlexWeight(npc:GetFlexIDByName("EyesLeft"), math.Clamp(((npc:GetPoseParameter("head_yaw")-0.5)*3.5), 0, 1))
			end
		end
	end
	if ( SERVER ) then
		for _, npc in pairs(ents.FindByClass("npc_*")) do
			if IsValid(npc) and IsN64Character(npc) and npc:Health() > 0 then
				if npc.blinktimer == nil then npc.blinktimer = 0 end
				local change = 0.1
				local blinkbool = false
				if IsN64Mario(npc) then
					if (CurTime() % 1.6 > 1.4) and npc.blinktimer == 0 then npc.blinktimer = math.random(36, 128); end
				elseif IsN64Luigi(npc) then
					if (CurTime() % 1.3 > 1.2) and npc.blinktimer == 0 then npc.blinktimer = math.random(36, 128); end
				end
				if npc.blinktimer > 0 then npc.blinktimer = npc.blinktimer - 1 end
				if IsN64Mario(npc) then
					if npc.blinktimer > 0 and ((npc.blinktimer > 24 and npc.blinktimer < 36) or npc.blinktimer < 12) then blinkbool = true end
				elseif IsN64Luigi(npc) then
					if npc.blinktimer > 0 and (npc.blinktimer < 12) then blinkbool = true; change = 0.2 end
				end
				if npc.mariorky_face == ExpressionsTable.Pain then -- Pain
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"))), 0, change))
					if IsN64Mario(npc) then
						npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"))), 1, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"))), 0, change))
					elseif IsN64Luigi(npc) then
						npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"))), 0, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"))), 1, change))
					end
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyesShock"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOpen"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthGrin"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthGrin"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthFrown"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthFrown"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOh"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthShock"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthWiden"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthWiden"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsPain"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsPain"))), 1, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsClose"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"))), 1, change))
				elseif npc.mariorky_face == ExpressionsTable.PainWater then -- Underwater Pain
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"))), 1.5, change))
					if IsN64Mario(npc) then
						npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"))), 0, change))
					elseif IsN64Luigi(npc) then
						npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"))), 1, change))
					end
					npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyesShock"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOpen"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthGrin"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthGrin"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthFrown"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthFrown"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOh"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthShock"))), 0.5, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthWiden"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthWiden"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsPain"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsPain"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsClose"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"))), 1, change))
				elseif npc.mariorky_face == ExpressionsTable.Kill then -- Kill
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"))), 1, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"))), 1, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"))), 0, change))
					if IsN64Mario(npc) then
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOpen"))), 1, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthGrin"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthGrin"))), 0.2, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOh"))), 0, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthWiden"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthWiden"))), 0.2, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"))), 1, change))
					elseif IsN64Luigi(npc) then
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOpen"))), 0, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthGrin"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthGrin"))), 1, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOh"))), 0.25, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthWiden"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthWiden"))), 0, change))
						npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"))), 0, change))
					end
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthFrown"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthFrown"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthShock"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsPain"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsPain"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"))), 0, change))
					if blinkbool then 
						npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsClose"))), 1, change))
					else
						npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsClose"))), 0, change))
					end
					npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"))), 1, change))
				else -- Neutral
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsAngry"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsHappy"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsSad"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyebrowsShock"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyesShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyesShock"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthOpen"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOpen"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthGrin"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthGrin"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthFrown"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthFrown"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthOh"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthOh"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthF/V"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthF/V"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthShock"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthShock"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("MouthWiden"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthWiden"))), 0, change))
					npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsPain"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsPain"))), 0, change))
					if npc:WaterLevel() == 3 then 
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"))), 1, change))
					else
						npc:SetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("MouthCheekPuff"))), 0, change))
					end
					if blinkbool then 
						npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsClose"))), 1, change))
					else
						npc:SetFlexWeight(npc:GetFlexIDByName("EyelidsClose"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("EyelidsClose"))), 0, change))
					end
					npc:SetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"), math.Approach((npc:GetFlexWeight(npc:GetFlexIDByName("LowerTeethHide"))), 0, change))
				end
			end
		end
	end
end
hook.Add( "Think", "N64MarioFacialAnimation", N64MarioFacialAnimation )