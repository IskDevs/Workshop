TFAVOX_Models = TFAVOX_Models or {}
local model = "models/sheepylord/wxp/kokona___space_engineer_pm.mdl"  --<< REPLACE THIS WITH YOUR TARGET MODEL, USE FORWARD SLASHES

--[[CONVENIENCE FUNCTIONS, DO NOT EDIT FROM THIS POINT UNTIL CLEAR ]]--
local tmptbl = string.Split(model, "/")
local mdlprefix = tmptbl[#tmptbl] or model
mdlprefix = string.Replace(mdlprefix, ".mdl", "")
if model == "models/player/player.mdl" then return end
--[[CLEAR]]--

local function ParseWAVs(dir)
    local final = {}
    local files = file.Find("sound/vo/player/kokona/"..dir.."/*.wav", "GAME")

    for i = 1, table.Count(files) do
        local file = "vo/player/kokona/" .. dir .. "/" .. files[i]
        table.insert(final, file)
    end

    return final
end

TFAVOX_Models[model] = {
    ['main'] = {
        ['heal'] = {
            ['delay'] = 2,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "heal", { 
                "vo/player/kokona/heal.wav"
            })
        },
        ['healmax'] = { 
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "healmax", { 
                "vo/player/kokona/healmax1.wav", 
                "vo/player/kokona/hurt3.wav",  
                "vo/player/kokona/hurt2.wav"
            }) 
        },
        ['crithit'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "crithit", {  
                "vo/player/kokona/dd3.wav",
                "vo/player/kokona/damage1.wav", 
                "vo/player/kokona/damage2.wav", 
                "vo/player/kokona/damage3.wav", 
                "vo/player/kokona/damage4.wav", 
                "vo/player/kokona/damage5.wav", 
                "vo/player/kokona/damage6.wav", 
                "vo/player/kokona/damage7.wav", 
                "vo/player/kokona/damage8.wav", 
                "vo/player/kokona/damage9.wav", 
                "vo/player/kokona/damage10.wav",
                "vo/player/kokona/hurt1.wav", 
                "vo/player/kokona/hurt2.wav", 
                "vo/player/kokona/xuyaozhiliao.wav", 
                "vo/player/kokona/h11.wav", 
                "vo/player/kokona/h12.wav", 
                "vo/player/kokona/h13.wav"
            })
        },
        ['crithealth'] = {
            ['delay'] = 15,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "crithealth", { 
                "vo/player/kokona/hc1.wav", 
                "vo/player/kokona/h4.wav", 
                "vo/player/kokona/xuyaozhiliao.wav",
                "vo/player/kokona/crithealth1.wav", 
                "vo/player/kokona/crithealth2.wav", 
                "vo/player/kokona/crithealth3.wav", 
                "vo/player/kokona/dd1.wav",
                "vo/player/kokona/dd4.wav",
                "vo/player/kokona/dd6.wav"
            })
        },
    ['death'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "death", (function()
                local list = {
                "vo/player/kokona/h12.wav", 
                "vo/player/kokona/h11.wav", 
                "vo/player/kokona/dd1.wav", 
                "vo/player/kokona/dd3.wav", 
                "vo/player/kokona/dd4.wav", 
                "vo/player/kokona/dd6.wav",
                "vo/player/kokona/damage6.wav", 
                "vo/player/kokona/crithealth1.wav", 
                "vo/player/kokona/crithealth2.wav", 
                "vo/player/kokona/crithealth3.wav", 
                "vo/player/kokona/ad1.wav", 
                "vo/player/kokona/ad2.wav", 
                "vo/player/kokona/ad3.wav", 
                "vo/player/kokona/ad4.wav", 
                "vo/player/kokona/ad5.wav", 
                "vo/player/kokona/ad6.wav", 
                "vo/player/kokona/ad7.wav", 
                "vo/player/kokona/ad8.wav",
                "vo/player/kokona/ad9.wav",  
                "vo/player/kokona/ad10.wav"
                }
        local deathWavs = ParseWAVs("death")
        for i = 1, #deathWavs do
            table.insert(list, deathWavs[i])
        end
        return list
    end)())
},
        ['spawn'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "spawn", { 
                "vo/player/kokona/jump1.wav", 
                "vo/player/kokona/jump3.wav", 
                "vo/player/kokona/jump1.wav", 
                "vo/player/kokona/jump4.wav",
                "vo/player/kokona/arichang1.wav", 
                "vo/player/kokona/arichang2.wav",
                "vo/player/kokona/arichang3.wav",
                "vo/player/kokona/begin1.wav",
                "vo/player/kokona/begin2.wav",
                "vo/player/kokona/begin4.wav",
            })
        },
        ['pickup'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "pickup", { 
                "vo/player/kokona/pickup1.wav", 
                "vo/player/kokona/pickup2.wav", 
                "vo/player/kokona/pickup3.wav", 
                "vo/player/kokona/pickup4.wav" 
            })
        },
        ['reload'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "reload", { 
                "vo/player/kokona/reload1.wav", 
                "vo/player/kokona/reload2.wav", 
                "vo/player/kokona/reload3.wav" 
            })
        },
        ['noammo'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "noammo", {  
                "vo/player/kokona/noammo2.wav", 
                "vo/player/kokona/noammo3.wav" 
            })
        },
        ['fall'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "fall", { 
                "vo/player/kokona/h13.wav"
            })
        },
        ['jump'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "jump", { 
                "vo/player/kokona/juwav.wav", 
                "vo/player/kokona/jump1.wav", 
                "vo/player/kokona/jump2.wav", 
                "vo/player/kokona/jump4.wav"
            })
        },
        ['step'] = {
            ['delay'] = nil,
            ['sound'] = nil
        }
    },
    ['murder'] = {
        ['combine'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdcomb", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav",
                "vo/player/kokona/ak1.wav", 
                "vo/player/kokona/ak2.wav", 
                "vo/player/kokona/ak3.wav", 
                "vo/player/kokona/ak4.wav", 
                "vo/player/kokona/ak5.wav", 
                "vo/player/kokona/ak6.wav", 
                "vo/player/kokona/ak7.wav", 
                "vo/player/kokona/ak8.wav", 
                "vo/player/kokona/ak9.wav"
            })
        },
        ['cp'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdcp", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav" 
            })
        },
        ['zombie'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdzomb", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav" 
            })
        },
        ['headcrab'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdhc", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav" 
            })
        },
        ['manhack'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdmh", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav" 
            })
        },
        ['scanner'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdsca", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav" 
            })
        },
        ['sniper'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdsni", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav" 
            })
        },
        ['turret'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdtur", { 
                "vo/player/kokona/K1.wav", 
                "vo/player/kokona/K2.wav", 
                "vo/player/kokona/K3.wav", 
                "vo/player/kokona/K4.wav", 
                "vo/player/kokona/K5.wav", 
                "vo/player/kokona/K6.wav", 
                "vo/player/kokona/K7.wav", 
                "vo/player/kokona/K8.wav", 
                "vo/player/kokona/K9.wav" 
            })
        },
        ['ally'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdally", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav" 
            })
        },
        ['generic'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "murdgener", { 
                "vo/player/kokona/k1.wav", 
                "vo/player/kokona/k2.wav", 
                "vo/player/kokona/k3.wav", 
                "vo/player/kokona/k4.wav", 
                "vo/player/kokona/k5.wav", 
                "vo/player/kokona/k6.wav", 
                "vo/player/kokona/k7.wav", 
                "vo/player/kokona/k8.wav", 
                "vo/player/kokona/k9.wav" 
            })
        }
    },
    ['damage'] = {
        [HITGROUP_GENERIC] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_GENERIC", { 
                "vo/player/kokona/damage1.wav",
                "vo/player/kokona/damage2.wav",
                "vo/player/kokona/damage3.wav",
                "vo/player/kokona/damage4.wav",
                "vo/player/kokona/damage5.wav", 
                "vo/player/kokona/damage6.wav", 
                "vo/player/kokona/damage7.wav", 
                "vo/player/kokona/damage8.wav", 
                "vo/player/kokona/damage9.wav", 
                "vo/player/kokona/damage10.wav",
                "vo/player/kokona/h1.wav", 
                "vo/player/kokona/h9.wav", 
                "vo/player/kokona/h10.wav" 
            })
        },
        [HITGROUP_HEAD] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_HEAD", { 
                "vo/player/kokona/h9.wav",
                "vo/player/kokona/h7.wav",
                "vo/player/kokona/h8.wav",
                "vo/player/kokona/hz1.wav"
            })
        },
        [HITGROUP_CHEST] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_CHEST", { 
                "vo/player/kokona/dz1.wav",
                "vo/player/kokona/h1.wav",
                "vo/player/kokona/h2.wav",
                "vo/player/kokona/hz2.wav",
                "vo/player/kokona/zh3.wav"
            })
        },
        [HITGROUP_STOMACH] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_STOMACH", { 
                "vo/player/kokona/xuyaozhiliao.wav",
                "vo/player/kokona/h2.wav",
                "vo/player/kokona/h3.wav",
                "vo/player/kokona/hz3.wav",
                "vo/player/kokona/hz4.wav" 
            })
        },
        [HITGROUP_LEFTARM] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_LEFTARM", { 
                "vo/player/kokona/dl1.wav", 
                "vo/player/kokona/h3.wav", 
                "vo/player/kokona/h4.wav",
                "vo/player/kokona/hz4.wav",
                "vo/player/kokona/hz5.wav"
            })
        },
        [HITGROUP_RIGHTARM] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_RIGHTARM", { 
                "vo/player/kokona/dy1.wav", 
                "vo/player/kokona/h4.wav", 
                "vo/player/kokona/h5.wav", 
                "vo/player/kokona/hz1.wav",
                "vo/player/kokona/hz2.wav" 
            })
        },
        [HITGROUP_LEFTLEG] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_LEFTLEG", { 
                "vo/player/kokona/dl2.wav", 
                "vo/player/kokona/h5.wav", 
                "vo/player/kokona/h6.wav",
                "vo/player/kokona/hz2.wav",
                "vo/player/kokona/hz3.wav" 
            })
        },
        [HITGROUP_RIGHTLEG] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_RIGHTLEG", { 
                "vo/player/kokona/dy2.wav", 
                "vo/player/kokona/h6.wav", 
                "vo/player/kokona/h7.wav",
                "vo/player/kokona/hz3.wav",
                "vo/player/kokona/zh4.wav" 
            })
        },
        [HITGROUP_GEAR] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "HITGROUP_GEAR", { 
                "vo/player/kokona/ly1.wav", 
                "vo/player/kokona/ly2.wav", 
                "vo/player/kokona/ly3.wav",
                "vo/player/kokona/hz1.wav",
                "vo/player/kokona/hz5.wav"
            })
        }
    },
    ['callouts'] = {
        ['act1'] = {
            ['name'] = "run",
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "act1", { 
                "vo/player/kokona/arun.wav"
            })
        },
        ['good'] = {
            ['name'] = "Good job",
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "good", { 
                "vo/player/kokona/agj1.wav"
            })
        },
        ['help'] = {
            ['name'] = "Help",
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "help", { 
                "vo/player/kokona/aqiujiu.wav"
            })
        },
        ['negative'] = {
            ['name'] = "Negative",
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "negative", { 
                "vo/player/kokona/afandui1.wav", 
                "vo/player/kokona/afandui2.wav"
            })
        },
        ['roger'] = {
            ['name'] = "Roger",
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "roger", { 
                "vo/player/kokona/ashoudao1.wav", 
                "vo/player/kokona/ashoudao2.wav", 
                "vo/player/kokona/ashoudao3.wav" 
            })
        },
        ['taunt'] = {
            ['name'] = "richang",
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "taunt", { 
                "vo/player/kokona/arichang1.wav", 
                "vo/player/kokona/arichang2.wav", 
                "vo/player/kokona/arichang3.wav" 
            })
        }
    },
    ['external'] = {
        ['bash'] = {
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "Bash", { 
                "vo/player/kokona/bash1.wav", 
                "vo/player/kokona/bash2.wav", 
                "vo/player/kokona/bash3.wav",
                "vo/player/kokona/bash4.wav", 
                "vo/player/kokona/bash5.wav", 
                "vo/player/kokona/bash6.wav", 
                "vo/player/kokona/bash7.wav", 
                "vo/player/kokona/bash8.wav", 
                "vo/player/kokona/bash9.wav", 
                "vo/player/kokona/bash10.wav", 
                "vo/player/kokona/bash11.wav", 
                "vo/player/kokona/bash12.wav", 
                "vo/player/kokona/bash13.wav"
            })
        }
    },
    ['incapacitation'] = {
        ['ledhaninitial'] = { -- Player enters a ledge hang
            ['delay'] = 3,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "ledhaninitial", { "vo/player/kokona/death4.wav" } )
        },
        ['ledhanstart'] = { -- Sounds played for the first phase of ledge hang
            ['delay'] = 5,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "ledhanstart", { "vo/player/kokona/critdamage6.wav" } )
        },
        ['ledhanmid'] = { -- Sounds played for the second phase of ledge hang
            ['delay'] = 5,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "ledhanmid", { "vo/player/kokona/critdamage7.wav" } )
        },
        ['ledhanend'] = { -- Sounds played for the third phase of ledge hang
            ['delay'] = 5,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "ledhanend", { "vo/player/kokona/critdamage2.wav" } )
        },
        ['incapstart'] = { -- Player gets incapacitated
            ['delay'] = 5,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "incapstart", ParseWAVs("death")
            )
        },
        ['incaploop'] = { -- Sounds played in incap
            ['delay'] = 5,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "incaploop", ParseWAVs("death"))
        },

        ['incapend'] = { -- Player is below low health threshold in incap
            ['delay'] = 5,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "incapend", {"vo/player/kokona/death5.wav","vo/player/kokona/death1.wav","vo/player/kokona/death4.wav" ,"vo/player/kokona/xuyaozhiliao.wav","vo/player/kokona/ad5.wav", "vo/player/kokona/ad7.wav","vo/player/kokona/ad11.wav","vo/player/kokona/ad8.wav"} )
        },
        ['incapdmg'] = { -- Player takes damage while incapacitated/ledge hanging
            ['delay'] = 3,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "incapdmg", { 
            "vo/player/kokona/ad12.wav",
            "vo/player/kokona/ad13.wav",
            "vo/player/kokona/critdamage6.wav",
            "vo/player/kokona/critdamage5.wav",
            "vo/player/kokona/critdamage4.wav",
            "vo/player/kokona/critdamage3.wav",
            "vo/player/kokona/critdamage2.wav",
            "vo/player/kokona/critdamage1.wav" 
        } )
        },
        ['rescueledge'] = { -- Player is rescuing another player from a ledge
            ['delay'] = 6,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "rescueledge", { "vo/player/kokona/begin1.wav" } )
        },
        ['rescueincap'] = { -- Player is rescuing another player from incap
            ['delay'] = 6,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "rescueincap", { "vo/player/kokona/begin1.wav" } )
        },
        ['rescuecombat'] = { -- Player is rescuing another player from a ledge/incap, but there are enemies nearby
            ['delay'] = 6,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "rescuecombat", { "vo/player/kokona/begin1.wav" } )
        },
        ['rescueappreciation'] = { -- The player who was revived shows their appreciation
            ['delay'] = 2,
            ['sound'] = TFAVOX_GenerateSound( mdlprefix, "rescueappreciation", { "vo/player/kokona/begin1.wav","vo/player/kokona/begin2.wav" } )
        }
    },


    ['calloutsextra'] = {
    
        ['barnaclegrabstart'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "cough", ParseWAVs("cough"))
        },

        ['barnaclegrabloop'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "barnaclegrabloop", ParseWAVs("coughloop"))
        },

        ['landgrunt'] = {
            ['sound'] = wav
        },

        ['meleeattack'] = {
            ['sound'] =  TFAVOX_GenerateSound(mdlprefix, "killedbyenemy", { 
                "vo/player/kokona/dao1.wav",
                "vo/player/kokona/dao2.wav" })
        },

        ['outofbreath'] = {
            ['delay'] = nil,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "outofbreath", ParseWAVs("breath"))
        },

        ['friendlyfiredamage'] = {
            ['sound'] = wav
        },

        ['grenadecall'] = {
            ['sound'] = wav
        },

        ['grenadecallself'] = {
            ['sound'] = wav
        },

        ['grenadethrow'] = {
            ['delay'] = 5,
            ['sound'] = wav
        },

        ['barrelcall'] = {
            ['sound'] = wav
        },

        ['killedbyenemy'] = {
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "killedbyenemy", { 
                "vo/player/kokona/ak1.wav", 
                "vo/player/kokona/ak2.wav", 
                "vo/player/kokona/ak3.wav", 
                "vo/player/kokona/ak4.wav", 
                "vo/player/kokona/ak5.wav", 
                "vo/player/kokona/ak6.wav", 
                "vo/player/kokona/ak7.wav", 
                "vo/player/kokona/ak8.wav", 
                "vo/player/kokona/ak9.wav"})
        },
        
        ['killedbyfriendly'] = {
            ['sound'] = wav
        },

        ['takedown'] = {
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "takedown", { 
                "vo/player/kokona/jd1.wav", 
                "vo/player/kokona/jd2.wav"})
        },

        ['takedownreact'] = {
            ['sound'] = wav
        },

        ['startcombat'] = {
            ['sound'] = wav
        },

        ['midcombat'] = {
            ['sound'] = wav
        },

        ['healteam'] = {
            ['delay'] = 7,
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "healteam", { 
                "vo/player/kokona/zl1.wav", 
                "vo/player/kokona/zl2.wav"})
        },

        ['healself'] = {
            ['sound'] = TFAVOX_GenerateSound(mdlprefix, "healself", { 
                "vo/player/kokona/zl1.wav", 
                "vo/player/kokona/zl2.wav"})
        },

        ['healattempt'] = {
            ['sound'] = wav
        },

        ['meleeonehand'] = {
            ['sound'] = wav
        },

        ['meleetwohand'] = {
            ['sound'] = wav
        },

        ['meleefists'] = {
            ['sound'] = wav
        },

        ['meleeknife'] = {
            ['sound'] = wav
        },

        ['weaponjam'] = {
            ['delay'] = 3,
            ['sound'] = wav
        },

        ['weaponunjam'] = {
            ['sound'] = wav
        },

        ['complimentkill'] = {
            ['sound'] = wav
        },

        ['roadkill'] = {
            ['delay'] = 5,
            ['sound'] = wav
        },

        ['roadkillfriendly'] = {
            ['delay'] = 5,
            ['sound'] = wav
        },
        
        ['entervehdriver'] = {
            ['delay'] = 5,
            ['sound'] = wav
        },

        ['entervehpassenger'] = {
            ['sound'] = wav
        },

        ['exitveh'] = {
            ['sound'] = wav
        }



    }
}