local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = 0

function PoliceCall()
    local chance = 75
    if GetClockHours() >= 0 and GetClockHours() <= 6 then
        chance = 50
    end
    if math.random(1, 100) <= chance then
        TriggerServerEvent('police:server:policeAlert', Lang:t("ammurobbery.police_notification"))
    end
end

RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

-- Event para roubar vitrines
RegisterNetEvent('mt-ammurobbery:client:startStealing')
AddEventHandler("mt-ammurobbery:client:startStealing", function(vitrineKey, entity)
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownVitrines", function(cooldown)
        if not cooldown and CurrentCops >= Config.requiredCopsCount then
        QBCore.Functions.Progressbar("vitrine", Lang:t("ammurobbery.animation_searching"), Config.searchTime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "missheist_jewel",
            anim = "smash_case",
            flags = 16,
        }, {}, {}, function() 
            local playerPed = PlayerPedId()
            local success = exports['qb-lock']:StartLockPickCircle(1,30)
            if success then
                PoliceCall()
                TriggerServerEvent("mt-ammurobbery:server:getVitrineItems", vitrineKey)
                TriggerServerEvent('mt-ammurobbery:Server:CooldownVitrines', vitrineKey)
                StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
                ClearPedTasks(playerPed)
            else
                QBCore.Functions.Notify(Lang:t("ammurobbery.error_failed"), "error")
                TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                ClearPedTasks(playerPed)
            end
        end)
        elseif cooldown then
            QBCore.Functions.Notify(Lang:t("ammurobbery.error_cooldown"))
        else
            QBCore.Functions.Notify(Lang:t("ammurobbery.error_no_police"))
        end
    end, vitrineKey)
end)
