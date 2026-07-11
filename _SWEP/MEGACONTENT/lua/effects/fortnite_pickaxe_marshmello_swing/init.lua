function EFFECT:Init(data)
	
	if !IsValid(data:GetEntity()) then return end
	
	self.WeaponEnt = data:GetEntity()
	self.Attachment = data:GetAttachment()
	
	if !IsValid(self.WeaponEnt) or !IsValid(self.WeaponEnt:GetOwner()) then 
		return
	else
	
	self.Position = self:GetTracerShootPos(data:GetOrigin(), self.WeaponEnt, self.Attachment)
	self.Forward = data:GetNormal()
	self.Angle = self.Forward:Angle()
	self.Right = self.Angle:Right()
	
	local AddVel = self.WeaponEnt.Owner:GetVelocity()
	
	local emitter = ParticleEmitter(self.Position)
	if emitter != nil then	
		local particle = emitter:Add( "effects/fortnite/marshmelloswing", self.Position )
		if particle != nil then
	
			particle:SetVelocity( AddVel )
			particle:SetGravity( Vector( 0, 0, 10 ) )
			particle:SetAirResistance( 230 )

			particle:SetDieTime( math.Rand( 0.1, 0.1 ) )

			particle:SetStartSize( math.random( 0, 0 ) )
			particle:SetEndSize( 11 )

			particle:SetRoll( math.Rand( 0,0 ) )
			particle:SetRollDelta( math.Rand( 0, 0 ) )
			
			particle:SetColor( 255, 255,255 )
		
		for i = 1,4 do
			local particle = emitter:Add( "effects/fortnite/marshmelloswing", self.Position )

				particle:SetVelocity( AddVel )
			particle:SetGravity( Vector( 0, 0, 10 ) )
			particle:SetAirResistance( 230 )

			particle:SetDieTime( math.Rand( 0.1, 0.1 ) )

			particle:SetStartSize( math.random( 1, 1 ) )
			particle:SetEndSize( 11 )

			particle:SetRoll( math.Rand( 32, 3 ) )
			particle:SetRollDelta( math.Rand( 23, 3 ) )
			
			particle:SetColor( 255, 255, 255 )
		end
				for i = 1,4 do
			local particle = emitter:Add( "effects/fortnite/marshmelloswing", self.Position )

				particle:SetVelocity( AddVel )
			particle:SetGravity( Vector( 0, 0, 10 ) )
			particle:SetAirResistance( 230 )

			particle:SetDieTime( math.Rand( 0.02, 0.02 ) )

			particle:SetStartSize( math.random( 1, 1 ) )
			particle:SetEndSize( 11 )

			particle:SetRoll( math.Rand( 32, 3 ) )
			particle:SetRollDelta( math.Rand( 23, 3 ) )
			
			particle:SetColor( 255, 255, 255 )
		end
		end
	emitter:Finish()
	end
	end
	
end


function EFFECT:Render()
end