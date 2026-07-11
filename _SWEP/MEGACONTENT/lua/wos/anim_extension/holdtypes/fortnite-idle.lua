--=====================================================================
/*		My Custom Holdtype
			Created by [BoZ]Niko663( STEAM_0:0:122365922 )*/
local DATA = {}
DATA.Name = "Fortnite Idle"
DATA.HoldType = "fortnite-idle"
DATA.BaseHoldType = "passive"
DATA.Translations = {} 

DATA.Translations[ ACT_MP_CROUCHWALK ] = {
	{ Sequence = "cwalk_shotgun", Weight = 1 },
}

DATA.Translations[ ACT_MP_CROUCH_IDLE ] = {
	{ Sequence = "cidle_shotgun", Weight = 1 },
}

wOS.AnimExtension:RegisterHoldtype( DATA )
--=====================================================================
