SWEP.Base = "weapon_sckballin_base"



local ballModel = Model("models/basketball.mdl")

 

SWEP.PrintName			= "Ballin'" -- This will be shown in the spawn menu, and in the weapon selection menu
SWEP.Author			= "Wontairr" -- These two options will be shown when you have the weapon highlighted in the weapon selection menu
SWEP.Instructions = "Hold ATTACK to charge your throw, then release to throw.\n\nHold SECONDARY ATTACK to charge your dunk, then release to dunk.\n\n Press RELOAD to show off."
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo		= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo		= "none"

SWEP.releaseCheck = true
SWEP.releaseCheck2 = true

SWEP.StopAnim = true
SWEP.canAttack = true
SWEP.isReloading = true

SWEP.playedIdle = false 
SWEP.playedAirIdle = false

SWEP.chargeSpeed = 0.03
SWEP.chargeMultiplier = 1
SWEP.maxChargePrimary = 4
SWEP.maxChargeSecondary = 5
SWEP.Primary.FireDelay = 0.4



SWEP.NextIdle = 0


SWEP.HoldType = "knife"

SWEP.ViewModel			= "models/c_ballin.mdl"
SWEP.WorldModel			= "models/weapons/w_crowbar.mdl"
SWEP.Category = "Ballin'"
SWEP.VElements = {}
SWEP.ViewModelBoneMods = {}
SWEP.WElements = {
	["element_name"] = { type = "Model", model = "models/basketball.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.355, 7.162, -0.004), angle = Angle(0, 0, 0), size = Vector(0.788, 0.788, 0.788), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.UseHands = true
SWEP.ViewModelFOV = 120
SWEP.timerName = ""


SWEP.ShootSound = Sound( "ballinthrow" )

function SWEP:Initialize()
	SCKBaseBallin.Initialize(self)
	if CLIENT then
        self.WepSelectIcon = surface.GetTextureID("vgui/entities/weapon_ballin.vmt")
    end
end

if CLIENT then

	
	function SWEP:DrawWeaponSelection( x, y, wide, tall, alpha )
		-- Set us up the texture
		surface.SetDrawColor( 255, 255, 255, alpha )
		surface.SetTexture( self.WepSelectIcon )
		

		local time = math.abs(math.sin(CurTime() * 8))	
		fsin = math.ease.InCirc(time) * 10 -- Adjust multiplier for bounce intensity
		

		
		-- Borders
		y = y - 50
		x = x + 10
		wide = wide - 20
		
		-- Draw that mother
		surface.DrawTexturedRect( x + wide/4,y + tall/4 + fsin,wide/2,tall/2,90)
	
		-- Draw weapon info box
		self:PrintWeaponInfo( x + wide + 20, y + tall * 0.95, alpha )
		
	end
end



function SWEP:PrimaryAttack()
    -- Anti-spam cooldown
    if CurTime() < (self:GetNextPrimaryFire() or 0) then return end
    if self.releaseCheck2 then return end

    self:SendWeaponAnim( ACT_VM_IDLE_LOWERED )

	self.releaseCheck = true
	self.canAttack = true
	self.isReloading = false
	self.StopAnim = true
end

function SWEP:SecondaryAttack()
    -- Anti-spam cooldown
    if CurTime() < (self:GetNextSecondaryFire() or 0) then return end
    if self.releaseCheck then return end

	self.chargeMultiplier = self.chargeMultiplier + 0.02

    self:SendWeaponAnim( ACT_VM_IDLE_TO_LOWERED )
	self.canAttack = true
	self.isReloading = false
	self.releaseCheck2 = true
end


function SWEP:Equip()
    self.timerName = "ballinMultiplier" .. self:GetOwner():SteamID64()
	self:SetHoldType("knife")
	self.releaseCheck = false
	self.releaseCheck2 = false
	self.isReloading = false
end

function SWEP:Holster(wep)
	self.releaseCheck = false
	self.releaseCheck2 = false
	self.isReloading = false
	return true
end


function SWEP:Deploy()
    self:SendWeaponAnim( ACT_VM_IDLE )
end

function SWEP:Reload()
	if not self:GetOwner():KeyPressed(IN_RELOAD) then return end
	self:SendWeaponAnim( ACT_VM_PULLBACK_HIGH )
	self.NextIdle = CurTime() + 10.0
	self.playedIdle = false 
	self.playedAirIdle = false

	if not self.isReloading then
		self.isReloading = true

	end

end


function SWEP:Think()
	if not IsValid(self:GetOwner()) or not IsFirstTimePredicted() then return end

	local ownerFov = self:GetOwner():GetInfoNum("fov_desired",90)

	if self:GetOwner():KeyPressed(IN_ATTACK) or self:GetOwner():KeyPressed(IN_ATTACK2) then
		-- FOV disabled: self:GetOwner():SetFOV(ownerFov + self.maxChargePrimary * 2,self.chargeSpeed * (self.maxChargePrimary/0.13))
	elseif self:GetOwner():KeyReleased(IN_ATTACK) or self:GetOwner():KeyReleased(IN_ATTACK2) then
		-- FOV disabled: self:GetOwner():SetFOV(ownerFov,0)
	end



	if self.timerName == "" then
		self.timerName = "ballinMultiplier" .. self:GetOwner():SteamID64()
	end
	if self.releaseCheck then
		if not IsValid(self:GetOwner()) then return end

        if !timer.Exists(self.timerName) then
            timer.Create(self.timerName, self.chargeSpeed, 0, function()
				if not IsValid(self) or not IsValid(self:GetOwner()) then return end
                self.chargeMultiplier = math.Clamp(self.chargeMultiplier + 0.13, 0, self.maxChargePrimary)
				
            end)
        end
		if not self:GetOwner():KeyReleased(IN_ATTACK) then return end

		local cd = (ballin_throw_cooldown and ballin_throw_cooldown:GetFloat()) or self.Primary.FireDelay
		self:SetNextPrimaryFire( CurTime() + cd )	
        self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
        self:ThrowBall(false) 
        self:GetOwner():ViewPunch( Angle( 2, 0, 0 ) )
		self.chargeMultiplier = 1
	end
	if self.releaseCheck2 then
		if not IsValid(self:GetOwner()) then return end

        if !timer.Exists(self.timerName) then
            timer.Create(self.timerName, self.chargeSpeed, 0, function()
				if not IsValid(self) then return end
                self.chargeMultiplier = math.Clamp(self.chargeMultiplier + 0.15, 0, self.maxChargeSecondary)
            end)
        end
		if not self:GetOwner():KeyReleased(IN_ATTACK2) then return end

		local cd = (ballin_throw_cooldown and ballin_throw_cooldown:GetFloat()) or (self.Primary.FireDelay + 0.3)
		self:SetNextSecondaryFire( CurTime() + cd )	
			
        self:ThrowBall(true) 
        self:GetOwner():ViewPunch( Angle( -5, 0, 0 ) )
		self.chargeMultiplier = 1

	end
	if CurTime() < self.NextIdle then return end
	if self:GetOwner():KeyDown(IN_ATTACK) or self:GetOwner():KeyDown(IN_ATTACK2) then return end

	if self:GetOwner():OnGround() and not self.playedIdle then
		self:SendWeaponAnim( ACT_VM_IDLE )
		self.playedIdle = true
		self.playedAirIdle = false
	end
	if not self:GetOwner():OnGround() and not self.playedAirIdle then
		self:SendWeaponAnim( ACT_VM_PULLBACK )
		self.playedIdle = false
		self.playedAirIdle = true
	end




end



local function physCallback(ent, data)
	if ent.BouncePlayed then return end

	ent:EmitSound("ballinbounce")
	ent.BouncePlayed = true
	timer.Simple(0.2, function()
		if not IsValid(ent) then return end
		ent.BouncePlayed = false
	end)
end

function SWEP:ThrowBall(throwDown )
	self.releaseCheck2 = false
	self.releaseCheck = false
	self.canAttack = false
	local owner = self:GetOwner()
	if not IsValid(owner) then return end

    if timer.Exists(self.timerName) then
        timer.Remove(self.timerName)
    end

    self:GetOwner():SetAnimation(PLAYER_ATTACK1)
	if throwDown then
		self:SendWeaponAnim( ACT_VM_SECONDARYATTACK)
		self.NextIdle = CurTime() + 0.8
		self.playedIdle = false
		self.playedAirIdle = false
		timer.Simple(0.8, function()
			if not IsValid(self) then return end
			self.StopAnim = false
			self.canAttack = true
			
		end)				
		
	else
		self:SendWeaponAnim( ACT_VM_PRIMARYATTACK)
		self.NextIdle = CurTime() + 0.5
		self.playedIdle = false
		self.playedAirIdle = false
		timer.Simple(0.5, function()
			if not IsValid(self) then return end

			self.StopAnim = false
			self.canAttack = true
		end)
		
	end



	-- Play the shoot sound we precached earlier!
	self:EmitSound( self.ShootSound )


	if CLIENT then return end

	-- Create a prop_physics entity
	local entThrown = ents.Create( "prop_physics" )



	entThrown:SetModel( ballModel )
	entThrown:SetModelScale(ballin_ballsize:GetFloat())
	entThrown.BasketBall = true

	local aimvec = owner:GetAimVector()
	local lookingDown = owner:EyeAngles().p > 25 -- Get the pitch of the player's view angles

	local pos = aimvec

	local eyeTrace = owner:GetEyeTrace()

	if eyeTrace.HitPos:Distance(owner:EyePos()) > 45 then
		if not throwDown then
			pos = aimvec * 30 -- This creates a new vector object
			pos:Add( owner:EyePos()) -- This translates the local aimvector to world coordinates
		else
			pos = aimvec * 50 -- This creates a new vector object
			pos:Add( owner:EyePos()) -- This translates the local aimvector to world coordinates
		end
	else
		pos = aimvec * 0.9
		pos:Add( owner:EyePos())
	end


	-- Set the position to the player's eye position plus 16 units forward.
	entThrown:SetPos( pos )

	-- Set the angles to the player'e eye angles. Then spawn it.
    entThrown:SetAngles( owner:EyeAngles() )

    if(IsValid(self:GetOwner())) then
        entThrown:SetOwner(self:GetOwner())
    end

	entThrown:Spawn()
	entThrown:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
	entThrown:SetCustomCollisionCheck(true)

	local trail = nil
	local trailColor = ballin_trailcolor:GetString()
	local color = string.Split(trailColor, " ")
	trailColor = Color(tonumber(color[1]), tonumber(color[2]), tonumber(color[3]), 255)
	if !throwDown then
		trail = util.SpriteTrail( entThrown, 0, Color( trailColor.r,trailColor.g,trailColor.b, 60), false, 10, 1, 0.7, 1 / ( 15 + 1 ) * 0.5, "trails/smoke" )
	else
		trail = util.SpriteTrail( entThrown, 0, Color( trailColor.r,trailColor.g,trailColor.b, 100), false, 10, 1, 1.2, 1 / ( 15 + 1 ) * 0.5, "trails/smoke" )
	end
	local callbackID = -1

	if throwDown then
		callbackID = entThrown:AddCallback("PhysicsCollide", function()
			if self:GetClass() == "weapon_ballinadmin" then
				entThrown:EmitSound("ballindunkadmin")
			else
				entThrown:EmitSound("ballindunk")
			end

			entThrown:RemoveCallback("PhysicsCollide", callbackID)
		end)
	else
		entThrown:AddCallback("PhysicsCollide", physCallback)
		entThrown.BouncePlayed = false
	end

	local phys = entThrown:GetPhysicsObject()
	if ( not phys:IsValid() ) then entThrown:Remove() return end
 

    phys:SetMaterial("gmod_bouncy")
	phys:SetMass(5 * ballin_ballmass:GetFloat())

    if !throwDown then
        aimvec:Mul( 25000 * self.chargeMultiplier * ballin_ballforce_multiplier:GetFloat() )
	    phys:ApplyForceCenter( aimvec )
    else
        aimvec:Mul( 48000 * ballin_secondary_force_multiplier:GetFloat() )
		aimvec:Add(Vector(0,0,-25000 * self.chargeMultiplier * ballin_ballforce_multiplier:GetFloat() * ballin_secondary_force_multiplier:GetFloat())) 
	    phys:ApplyForceCenter(aimvec)
        phys:ApplyForceCenter( Vector(0,0,-25000 * self.chargeMultiplier * ballin_ballforce_multiplier:GetFloat() * ballin_secondary_force_multiplier:GetFloat()) )
local center = self:GetOwner():GetPos()
        local radius = 90
        
        local hullSize = Vector(radius, radius, radius) -- Adjust the size of the hull to fit your needs
        
        local traceData = {}
        traceData.start = center
        traceData.endpos = center
        traceData.filter = function(ent)
            return !(ent.BasketBall or ent == owner or ent == entThrown)
        end
        traceData.mins = -hullSize
        traceData.maxs = hullSize
        
        local traceResult = util.TraceHull(traceData)
        
		-- Dunk stop
        if traceResult.Hit then

            local hitEntity = traceResult.Entity

            if hitEntity == owner or hitEntity.BasketBall then return end

            owner:SetMoveType(MOVETYPE_NONE)
            owner:ViewPunch( Angle( 50, 0, 0 ) )

            timer.Simple(0.2, function()
				if not IsValid(owner) then return end
                owner:SetMoveType(MOVETYPE_WALK)
            end)

        end
    end


	cleanup.Add( owner, "props", entThrown )
 
	undo.Create( "Thrown Ball" )
		undo.AddEntity( entThrown )
		undo.SetPlayer( owner )
	undo.Finish()

	timer.Simple( ballin_despawn_time:GetFloat(), function()
		if not IsValid(entThrown) then return end

		local pos = entThrown:GetPos()
		local effectData = EffectData()
		effectData:SetOrigin(pos)

		util.Effect("balloon_pop", effectData)

		entThrown:Remove() 
	end)
end