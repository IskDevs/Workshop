if SERVER then
    -- Fortnite-style: balls should not collide with players/NPCs and should never deal damage
    hook.Add("ShouldCollide", "Ballin_NoPlayerCollide", function(ent1, ent2)
        if not (IsValid(ent1) and IsValid(ent2)) then return end

        local function IsBall(e) return e.BasketBall == true end

        if IsBall(ent1) and (ent2:IsPlayer() or ent2:IsNPC()) then return false end
        if IsBall(ent2) and (ent1:IsPlayer() or ent1:IsNPC()) then return false end
    end)

    hook.Add("EntityTakeDamage", "Ballin_NoDamage", function(target, dmginfo)
        local inf = dmginfo:GetInflictor()
        local att = dmginfo:GetAttacker()

        if IsValid(inf) and inf.BasketBall then return true end
        if IsValid(att) and att.BasketBall then return true end
    end)

elseif CLIENT then
    sound.Add( {
        name = "ballinthrow",
        channel = CHAN_WEAPON,
        volume = 1.0,
        level = 140,
        pitch = {80, 95},
        sound = "weapons/iceaxe/iceaxe_swing1.wav"
    } )
    sound.Add( {
        name = "ballinbounce",
        channel = CHAN_STATIC,
        volume = 0.5,
        level = 75,
        pitch = {80, 110},
        sound = "ballin/bounce.wav"
    } )
    sound.Add( {
        name = "ballindunk",
        channel = CHAN_STATIC,
        volume = 1.0,
        level = 160,
        pitch = {95, 100},
        sound = "ballin/dunk.wav"
    } )
    sound.Add( {
        name = "ballindunkadmin",
        channel = CHAN_STATIC,
        volume = 1.0,
        level = 160,
        pitch = {85, 95},
        sound = "ballin/dunk.wav"
    } )
end

-- Shared
ballin_ballsize     = CreateConVar("ballin_ballsize","1.3",FCVAR_ARCHIVE,"The size multiplier for all balls.",0.1,20)
ballin_ballmass     = CreateConVar("ballin_ballmass_multiplier","1",FCVAR_ARCHIVE,"The mass multiplier for all balls.",0.1,10)
ballin_ballforce_multiplier = CreateConVar("ballin_ballforce_multiplier","1",FCVAR_ARCHIVE,"The force multiplier for all balls.",0.1,15)

ballin_despawn_time = CreateConVar("ballin_despawn_time","2",FCVAR_ARCHIVE,"Seconds before a thrown ball despawns.",0.1,30)
ballin_secondary_force_multiplier = CreateConVar("ballin_secondary_force_multiplier","0.25",FCVAR_ARCHIVE,"Multiplier for SECONDARY ATTACK throw force.",0,5)

-- Cooldown between throws (seconds). Prevents spam.
ballin_throw_cooldown = CreateConVar("ballin_throw_cooldown","10",FCVAR_ARCHIVE,"Cooldown (seconds) between ball throws.",0,60)

ballin_trailcolor  = CreateConVar("ballin_trailcolor","255 255 255",FCVAR_ARCHIVE,"The color of the ball trail.")

ballin_jumpforce_multiplier = CreateConVar("ballin_jumpforce_multiplier","0",FCVAR_ARCHIVE,"The force multiplier for ball jump (kickback on player after throw).",0,15)



MsgC(Color(255,137,52),"[Ballin'] Loaded and ")
MsgC(Color(106,255,52),"READY TO GO!\n")

SCKBaseBallin = baseclass.Get("weapon_sckballin_base")
-- Hard-disable legacy pickup weapon/entity (single-use) even if old files linger.
-- This prevents spawnmenu clutter and stops servers from giving it.
local function Ballin_DisablePickup()
    local stored = weapons.GetStored("weapon_ballin_pickup")
    if stored then
        stored.Spawnable = false
        stored.AdminSpawnable = false
    end
end

if SERVER then
    hook.Add("Initialize", "Ballin_DisablePickupWeapon_Init", Ballin_DisablePickup)
    hook.Add("PlayerGiveSWEP", "Ballin_BlockGivePickupSWEP", function(ply, class)
        if class == "weapon_ballin_pickup" then return false end
    end)
    hook.Add("PlayerCanPickupWeapon", "Ballin_BlockPickupSWEP", function(ply, wep)
        if IsValid(wep) and wep:GetClass() == "weapon_ballin_pickup" then return false end
    end)
else
    hook.Add("InitPostEntity", "Ballin_DisablePickupWeapon_Client", Ballin_DisablePickup)
end

Ballin_DisablePickup()
