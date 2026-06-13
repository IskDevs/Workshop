AddCSLuaFile()

player_manager.AddValidModel( "Bloodsucker on Bicycle", "models/ganimator/bloodsucker_on_bike_player.mdl" )
player_manager.AddValidHands( "Bloodsucker on Bicycle", "models/ganimator/bloodsucker_on_bike_arms.mdl", 0, "00000000" )

local V = {
	Name = "Bloodsucker Supercharged",
	Model = "models/ganimator/bloodsucker_on_bike_vehicle.mdl",
	Category = "Base",
 
	Members = {
		Mass = 1200,
		
		AirFriction = -75000,

		FrontWheelRadius = 11,
		RearWheelRadius = 11,
		
		CustomWheels = false,

		OnTick = function(v)
			if v:GetVelocity():Length() > 20 then
				v:SetBodygroup(1, 1)
				else
				v:SetBodygroup(1, 0)
			end
		end,
		
		FirstPersonViewPos = Vector(0,-16,1),
		SeatOffset = Vector(-10,0,-3),
		SeatPitch = 30,
		SeatAnim = "drive_airboat",
		
		PassengerSeats = {
			{
				pos = Vector(0,-42,28),
				ang = Angle(0,0,-15),
				anim = "drive_jeep",
			},
		},
		
		StrengthenSuspension = false,

		FrontHeight = 7,
		FrontConstant = 43000,
		FrontDamping = 3000,
		FrontRelativeDamping = 0,

		RearHeight = 7,
		RearConstant = 43000,
		RearDamping = 3000,
		RearRelativeDamping = 0,

		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 335,

		TurnSpeed = 4,

		MaxGrip = 65,
		Efficiency = 1,
		GripOffset = -2,
		BrakePower = 20,
		BulletProofTires = true,

		IdleRPM = 400,
		LimitRPM = 10000,
		Revlimiter = false,
		PeakTorque = 150,
		PowerbandStart = 500,
		PowerbandEnd = 8500,
		Turbocharged = false,
		Supercharged = true,

		FuelFillPos = Vector(0,-14,42),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 30,

		PowerBias = 0,

		EngineSoundPreset = 5,
		
		snd_pitch = 1,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 1,

		snd_bloweron = "common/null.wav",
		snd_bloweroff = "ganimator/bloweroff_prostreet.wav",
		snd_horn = "ganimator/bell.wav",

		DifferentialGear = 0.5,
		Gears = {-0.1,0,0.3}
	}
}
list.Set( "simfphys_vehicles", "ganimator_krovososbike_charge", V )

local V = {
	Name = "Bloodsucker on Bicycle",
	Model = "models/ganimator/bloodsucker_on_bike_vehicle.mdl",
	Category = "Base",
 
	Members = {
		Mass = 1200,
		
		AirFriction = -75000,

		FrontWheelRadius = 11,
		RearWheelRadius = 11,
		
		CustomWheels = false,

		FirstPersonViewPos = Vector(0,-16,1),
		SeatOffset = Vector(-10,0,-3),
		SeatPitch = 30,
		SeatAnim = "drive_airboat",
		
		OnTick = function(v)
			v:SetCurHealth(9999999)
			
			if v:GetVelocity():Length() > 20 then
				v:SetBodygroup(1, 1)
				else
				v:SetBodygroup(1, 0)
			end
		end,
		
		PassengerSeats = {
			{
				pos = Vector(0,-42,28),
				ang = Angle(0,0,-15),
				anim = "drive_jeep",
			},
		},
		
		StrengthenSuspension = false,

		FrontHeight = 7,
		FrontConstant = 43000,
		FrontDamping = 3000,
		FrontRelativeDamping = 0,

		RearHeight = 7,
		RearConstant = 43000,
		RearDamping = 3000,
		RearRelativeDamping = 0,

		FastSteeringAngle = 35,
		SteeringFadeFastSpeed = 335,

		TurnSpeed = 2,

		MaxGrip = 35,
		Efficiency = 1,
		GripOffset = -2,
		BrakePower = 20,
		BulletProofTires = true,

		IdleRPM = 300,
		LimitRPM = 2000,
		Revlimiter = false,
		PeakTorque = 100,
		PowerbandStart = 400,
		PowerbandEnd = 1750,
		Turbocharged = false,
		Supercharged = false,

		FuelFillPos = Vector(0,-14,42),
		FuelType = FUELTYPE_PETROL,
		FuelTankSize = 30,

		PowerBias = 0,

		EngineSoundPreset = -1,
		
		snd_pitch = 1,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 1,
		
		snd_horn = "ganimator/bell.wav",

		DifferentialGear = 0.6,
		Gears = {-0.03,0,0.4}
	}
}
list.Set( "simfphys_vehicles", "ganimator_krovososbike", V )

local function HandleAirboat( vehicle, player )
	return player:LookupSequence( "drive_airboat" )
end

local V = {
	Name = "Bloodsucker on Bicycle", 
	Class = "prop_vehicle_jeep",
	Category = "Half-Life 2",
	Author = "GAnimator",
	Information = "Bloodsucker on Bicycle",
	Model = "models/ganimator/bloodsucker_on_bike_vehicle.mdl",
	KeyValues = {
		vehiclescript	=	"scripts/vehicles/ganimator_krovososbike.txt"
	},
	Members = {
		HandleAnimation = HandleAirboat,
	}
}
list.Set("Vehicles", "ganimator_krovososbike_source", V)