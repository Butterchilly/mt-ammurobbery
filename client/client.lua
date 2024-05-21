local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = 0
local smashing = false

function Dispatch()
    if Config.Dispatch == 'qb' then
        TriggerServerEvent('police:server:policeAlert', Lang:t("ammurobbery.police_notification"))
    elseif Config.Dispatch == 'ps' then
        exports['ps-dispatch']:EmsDown()
    end
end

function PoliceCall()
    local chance = 75
    if GetClockHours() >= 0 and GetClockHours() <= 6 then
        chance = 50
    end
    if math.random(1, 100) <= chance then
        Dispatch()
    end
end

local function loadParticle()
	if not HasNamedPtfxAssetLoaded("scr_jewelheist") then
		RequestNamedPtfxAsset("scr_jewelheist")
    end
end    

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(3)
    end
end

local function success()
    local playerPed = PlayerPedId()
    PoliceCall()
    smashing = false
    TriggerServerEvent("mt-ammurobbery:server:getVitrineItems", vitrineKey)
    TriggerServerEvent('mt-ammurobbery:Server:CooldownVitrines', vitrineKey)
    StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
    ClearPedTasks(playerPed)
end

local function failed()
    local playerPed = PlayerPedId()
    smashing = false
    QBCore.Functions.Notify(Lang:t("ammurobbery.error_failed"), "error")
    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    ClearPedTasks(playerPed)
end

RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

-- Event para roubar vitrines
RegisterNetEvent('mt-ammurobbery:client:startStealing')
AddEventHandler("mt-ammurobbery:client:startStealing", function(vitrineKey, entity)
    local pos = GetEntityCoords(PlayerPedId())
    local plyCoords = GetOffsetFromEntityInWorldCoords(ped, 0, 0.6, 0)
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownVitrines", function(cooldown)
        if not cooldown and CurrentCops >= Config.requiredCopsCount then
            smashing = true
            CreateThread(function()
                while smashing do
                    loadAnimDict("missheist_jewel")
                    TaskPlayAnim(PlayerPedId(), "missheist_jewel", "smash_case", 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
                    Wait(500)
                    TriggerServerEvent("InteractSound_SV:PlayOnSource", "breaking_vitrine_glass", 0.25)
                    loadParticle()
                    StartParticleFxLoopedAtCoord("scr_jewel_cab_smash", plyCoords.x, plyCoords.y, plyCoords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
                    Wait(2500)
                end
            end)
        QBCore.Functions.Progressbar("vitrine", Lang:t("ammurobbery.animation_searching"), Config.searchTime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },  {}, {}, {}, function() 
            if Config.Minigame == 'qb-lock' then
                local success = exports['qb-lock']:StartLockPickCircle(1,30)
                if success then success() else failed() end
            elseif Config.Minigame == 'ox_lib' then
                local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}}, {'w', 'a', 's', 'd'})
                if success then success() else failed() end
            elseif Config.Minigame == 'ps-ui' then
                local success = exports['ps-ui']:Circle(function(success)
                if success then success() else failed() end end, 2, 20)          
            end
        end)
        elseif cooldown then
            QBCore.Functions.Notify(Lang:t("ammurobbery.error_cooldown"))
        else
            QBCore.Functions.Notify(Lang:t("ammurobbery.error_no_police"))
        end
    end, vitrineKey)
end)
