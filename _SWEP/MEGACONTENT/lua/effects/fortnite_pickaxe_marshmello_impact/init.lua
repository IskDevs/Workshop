function EFFECT:Init(data)
	
	self.Position = data:GetOrigin()
	
	local emitter = ParticleEmitter(self.Position)
	if emitter != nil then	
		local particle = emitter:Add( "effects/fortnite/marshimpact"..math.random( 1, 5 ), self.Position )
		if particle != nil then
	
			particle:SetVelocity( Vector(0,0,0) )
			particle:SetGravity( Vector( 0, 0, 10 ) )
			particle:SetAirResistance( 230 )

			particle:SetDieTime( math.Rand( 0.1, 0.3 ) )

			particle:SetStartSize( math.random( 0, 0 ) )
			particle:SetEndSize( 40 )

			particle:SetRoll( math.Rand( 0,0 ) )
			particle:SetRollDelta( math.Rand( 0, 0 ) )
			
			particle:SetColor( 255, 255,255 )
		
		for i = 1,4 do
			local particle = emitter:Add( "effects/fortnite/marshimpact"..math.random( 1, 5 ), self.Position )

			particle:SetVelocity( Vector(0,0,0) )
			particle:SetGravity( Vector( 0, 0, 10 ) )
			particle:SetAirResistance( 230 )

			particle:SetDieTime( math.Rand( 0.1, 0.1 ) )

			particle:SetStartSize( math.random( 1, 1 ) )
			particle:SetEndSize(40 )

			particle:SetRoll( math.Rand( 32, 3 ) )
			particle:SetRollDelta( math.Rand( 23, 3 ) )
			
			particle:SetColor( 255, 255, 255 )
		end
	emitter:Finish()
	end
	end
	
end


function EFFECT:Render()
end