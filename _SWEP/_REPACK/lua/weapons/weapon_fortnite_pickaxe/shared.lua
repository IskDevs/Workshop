

if SERVER then
	AddCSLuaFile( "shared.lua" )
end

if CLIENT then
	SWEP.PrintName 			= "Pickaxe"
	SWEP.Author 			= "Nykez"
	SWEP.Instructions 		= "Left Click: Hit"

	SWEP.Slot 				= 2
	SWEP.SlotPos 			= 1
	SWEP.DrawAmmo 			= false
	SWEP.DrawCrosshair 		= true
end

SWEP.ViewModelFOV 			= 85
SWEP.ViewModelFlip 			= false

SWEP.Primary.ClipSize 		= -1
SWEP.Primary.DefaultClip 	= -1
SWEP.Primary.Automatic 		= false
SWEP.Primary.Ammo 			= "none"

SWEP.Secondary.ClipSize 	= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic 	= false
SWEP.Secondary.Ammo 		= "none"

SWEP.ViewModel 				= Model( "models/sterling/asapgaming/fortnite/pickaxes/c_fornite_axe.mdl" )
SWEP.WorldModel 			= Model( "models/sterling/asapgaming/fortnite/pickaxes/w_fornite_axe.mdl" )

SWEP.UseHands = true

SWEP.HitDistance = 65


function SWEP:CanPrimaryAttack() return true end

function SWEP:PrimaryAttack()	
    if not IsFirstTimePredicted() then return end

    if ( !self:CanPrimaryAttack() ) then return end


	self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )

	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration() + 0.01 )

	self:SetNextSecondaryFire( CurTime() + self:SequenceDuration() + 0.01 )

	self.Owner:SetAnimation( PLAYER_ATTACK1 )

	timer.Create( "weapon_idle" .. self:EntIndex(), self:SequenceDuration(), 1, function() if ( IsValid( self ) ) then self:SendWeaponAnim( ACT_VM_IDLE ) end end )

	self.Weapon:EmitSound( "npc/vort/claw_swing" .. math.random( 1, 2 ) .. ".wav" )

    self.Owner:ViewPunch( Angle( -1, 0, 0 ) )

	self:DoDamage()

    self.nextAttacked = CurTime() + 0.7
end

-- function SWEP:CanPrimaryAttack()

--     if self.nextAttacked and self.nextAttacked > CurTime() then return false  end

--     return true
-- end


function SWEP:SecondaryAttack()
	self:PrimaryAttack()
end

//
function SWEP:DoDamage()
	self.Owner:LagCompensation( true )

	local tr = util.TraceLine( {
		start = self.Owner:GetShootPos(),
		endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * self.HitDistance,
		filter = self.Owner,
		mask = MASK_SHOT_HULL
	} )

	if ( !IsValid( tr.Entity ) ) then
		tr = util.TraceHull( {
			start = self.Owner:GetShootPos(),
			endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * self.HitDistance,
			filter = self.Owner,
			mins = Vector( -10, -10, -8 ),
			maxs = Vector( 10, 10, 8 ),
			mask = MASK_SHOT_HULL
		} )
	end

	local hit = false

	if ( SERVER && IsValid( tr.Entity ) && ( tr.Entity:IsNPC() || tr.Entity:IsPlayer() || tr.Entity:Health() > 0 ) ) then


		local dmginfo = DamageInfo()

		local attacker = self.Owner
		if ( !IsValid( attacker ) ) then attacker = self end
		dmginfo:SetAttacker( attacker )

		dmginfo:SetInflictor( self )
		dmginfo:SetDamage(1)

		tr.Entity:TakeDamageInfo( dmginfo )
		hit = true

		if ( SERVER && IsValid( tr.Entity ) ) then
			local phys = tr.Entity:GetPhysicsObject()
			if ( IsValid( phys ) ) then
				phys:ApplyForceOffset( self.Owner:GetAimVector() * 80 * phys:GetMass(), tr.HitPos )
			end
		end


	end


	self.Owner:LagCompensation( false )

end

function SWEP:Initialize()

    self:SetWeaponHoldType( "melee2" )

end

function SWEP:Holster()

	return true

end

function SWEP:OnRemove()
	self:Holster()
end

