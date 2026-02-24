ENT.Type = "anim"
ENT.Base = "base_anim"

ENT.PrintName = "Fox Pet"
ENT.Category = "Fun + Games"
ENT.Author = "crester"

ENT.Spawnable = true

ENT.RenderGroup = RENDERGROUP_TRANSLUCENT
ENT.AutomaticFrameAdvance = true

ENT.Stages = {
	{
		mdl = "models/models/model/minecraft/fox_stand.mdl",
		snd = {
			"minecraftfoxpet/idle_1.wav",
			"minecraftfoxpet/idle_2.wav",
			"minecraftfoxpet/idle_3.wav",
			"minecraftfoxpet/idle_4.wav",
			"minecraftfoxpet/idle_5.wav",
			"minecraftfoxpet/sniff_1.wav",
			"minecraftfoxpet/sniff_2.wav"
		}
	},
	{
		mdl = "models/models/model/minecraft/fox_sit.mdl",
		snd = {
			"minecraftfoxpet/idle_1.wav",
			"minecraftfoxpet/idle_2.wav",
			"minecraftfoxpet/idle_3.wav",
			"minecraftfoxpet/idle_4.wav",
			"minecraftfoxpet/idle_5.wav"
		}
	},
	{
		mdl = "models/models/model/minecraft/fox_sleep.mdl",
		snd = {
			"minecraftfoxpet/sleep_1.wav",
			"minecraftfoxpet/sleep_2.wav",
			"minecraftfoxpet/sleep_3.wav",
			"minecraftfoxpet/sleep_4.wav",
			"minecraftfoxpet/sleep_5.wav"
		}
	}
}