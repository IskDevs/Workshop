if SERVER then
    -- Force clients to download required assets when joining the server
    resource.AddFile("sound/goldbrick/strongarm.wav")
    resource.AddFile("sound/goldbrick/strongarm_cock.wav")

    resource.AddFile("models/goldbrick/dart.mdl")
    resource.AddFile("models/goldbrick/dart.phy")
    resource.AddFile("models/goldbrick/dart.vvd")
    resource.AddFile("models/goldbrick/dart.dx90.vtx")
end

SWEP.PrintName = "Nerf Strongarm"
SWEP.Author = "GoldBrick"
SWEP.Instructions = "Primary Attack to shoot. Reload to reload."
SWEP.Category = "GoldBrick's SWEPs"

SWEP.Slot = 1
SWEP.SlotPos = 3
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.DrawAmmo = true
SWEP.FireUnderwater = false

SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.AdminOnly = false

SWEP.ViewModel = "models/weapons/c_nerf_strongarm.mdl"
SWEP.ViewModelFOV = 42
SWEP.UseHands = true
SWEP.WorldModel = "models/weapons/w_nerf_strongarm.mdl"
SWEP.HoldType = "pistol"

SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Automatic = true

SWEP.Secondary.Ammo = "none"
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false

SWEP.IsReloading = false
SWEP.ReloadTimer = 1
SWEP.ReloadCancelTime = 1
SWEP.NextReloadAllowed = 0

if not file.Exists("lua/entities/ent_dart.lua", "GAME") then
    if SERVER then
        hook.Add("PlayerInitialSpawn", "MissingAddonWarning", function(ply)
            ply:ChatPrint("---------------Nerf Strongarm SWEP: Jolt addon not detected. Please check the addon description for the required addon.---------------")
        end)
    end
end

local ShootSound = Sound("goldbrick/strongarm.wav")

function SWEP:Deploy()
	self:SetHoldType( "pistol" )
	self:EmitSound("goldbrick/strongarm_cock.wav")
    return true
end

function SWEP:PrimaryAttack()
    if CurTime() < self.ReloadCancelTime then return end

    if self.IsReloading then
        self.IsReloading = false

        local vm = self.Owner:GetViewModel()
        if IsValid(vm) then
            local seq = vm:LookupSequence("reload_end")
			self:EmitSound("goldbrick/strongarm_reload.wav")
            if seq >= 0 then
                vm:SendViewModelMatchingSequence(seq)
            end
        end

        self.ReloadCancelTime = CurTime() + 1
        self:SetNextPrimaryFire(self.ReloadCancelTime)
        return
    end

    if self.Owner:WaterLevel() == 3 then
        self:SetNextPrimaryFire(CurTime() + 0.15)
        return
    end

    if self:Clip1() <= 0 then
        self:EmitSound("goldbrick/strongarm_dry.wav")
        self:SetNextPrimaryFire(CurTime() + 1)
        return
    end

    self:SetNextPrimaryFire(CurTime() + 1)
    self:ShootProp()
    self.Owner:ViewPunch(Angle(math.random(-0.1, 0.1), math.random(-0.1, 0.1), 0))

    self:TakePrimaryAmmo(1)
	self.NextReloadAllowed = CurTime() + 1.25
end



function SWEP:ShootProp()

	if ( !self:CanPrimaryAttack() ) then return end
	
	local bullet = {}

	self:EmitSound(ShootSound)

	self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	self.Owner:SetAnimation(PLAYER_ATTACK1)

	if (CLIENT) then return end

	local Projectile = ents.Create("ent_dart")

	if (!IsValid(Projectile)) then return end

	Projectile:SetPos(self.Owner:EyePos()+(self.Owner:GetAimVector()*10)+(VectorRand()*1))
	Projectile:SetAngles(self.Owner:EyeAngles())
	Projectile:Spawn()

	local ProjectilePhysics = Projectile:GetPhysicsObject()

	if (!IsValid(ProjectilePhysics)) then Projectile:Remove() return end

	local Velocity = self.Owner:GetAimVector()

	local dir = (self.Owner:GetAimVector() + VectorRand() * 0.01):GetNormalized()
	local speed = 1000
	
	timer.Simple(10, function()
		if IsValid(Projectile) then
			Projectile:Remove()
		end
	end)

	local vm = self.Owner:GetViewModel()

	if IsValid(vm) then
		local shootSeq = vm:LookupSequence("shoot") or vm:SelectWeightedSequence(ACT_VM_PRIMARYATTACK)
		local dur = vm:SequenceDuration(shootSeq) or 1
	end


	ProjectilePhysics:Wake()
	ProjectilePhysics:SetVelocityInstantaneous(dir * speed)

end

function SWEP:Reload()
    if self.IsReloading then return end
	if CurTime() < self.NextReloadAllowed then return end
    if self:Clip1() >= self.Primary.ClipSize then return end
    if self.Owner:GetAmmoCount(self.Primary.Ammo) <= 0 then return end

    self.IsReloading = true
    self:SetNextPrimaryFire(CurTime() + 0.75)
    self.Owner:SetAnimation(PLAYER_RELOAD)

    local vm = self.Owner:GetViewModel()
    if IsValid(vm) then
        local seq = vm:LookupSequence("reload_start")
        if seq >= 0 then
            vm:SendViewModelMatchingSequence(seq)
        end
    end

    self.ReloadTimer = CurTime() + 0.65
end

function SWEP:Think()
    if not self.IsReloading then return end

    if CurTime() >= self.ReloadTimer then
        if self:Clip1() < self.Primary.ClipSize and self.Owner:GetAmmoCount(self.Primary.Ammo) > 0 then
		timer.Simple(0.4, function()
		if not IsValid(self) or not IsValid(self.Owner) then return end
		if self:Clip1() < self.Primary.ClipSize and self.Owner:GetAmmoCount(self.Primary.Ammo) > 0 then
        self:SetClip1(self:Clip1() + 1)
        self.Owner:RemoveAmmo(1, self.Primary.Ammo)
    end
end)


            local vm = self.Owner:GetViewModel()
            if IsValid(vm) then
                local seq = vm:LookupSequence("reload")
				self:EmitSound("goldbrick/strongarm_load.wav")
                if seq >= 0 then
                    vm:SendViewModelMatchingSequence(seq)
                end
            end

            self.ReloadTimer = CurTime() + 0.75
        else
            self.IsReloading = false

            local vm = self.Owner:GetViewModel()
            if IsValid(vm) then
                local seq = vm:LookupSequence("reload_end")
				self:EmitSound("goldbrick/strongarm_reload.wav")
                if seq >= 0 then
                    vm:SendViewModelMatchingSequence(seq)
                end
            end
        end
    end
end

function SWEP:Holster()
    self.IsReloading = false
    return true
end
