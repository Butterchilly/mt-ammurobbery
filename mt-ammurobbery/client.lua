local QBCore = exports['qb-core']:GetCoreObject()

-- Event para roubar vitrines
RegisterNetEvent('mt-ammurobbery:client:RoubarVitrine')
AddEventHandler("mt-ammurobbery:client:RoubarVitrine", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownVitrines", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("vitrine", "SEARCHING...", 5000, false, true, {
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
        TriggerServerEvent("mt-ammurobbery:server:ItensVitrines")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownVitrines')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarVitrine2')
AddEventHandler("mt-ammurobbery:client:RoubarVitrine2", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownVitrines2", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("vitrine2", "SEARCHING...", 5000, false, true, {
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
        TriggerServerEvent("mt-ammurobbery:server:ItensVitrines")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownVitrines2')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarVitrine3')
AddEventHandler("mt-ammurobbery:client:RoubarVitrine3", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownVitrines3", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("vitrine3", "SEARCHING...", 5000, false, true, {
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
        TriggerServerEvent("mt-ammurobbery:server:ItensVitrines")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownVitrines3')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarVitrine4')
AddEventHandler("mt-ammurobbery:client:RoubarVitrine4", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownVitrines4", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("vitrine4", "SEARCHING...", 5000, false, true, {
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
        TriggerServerEvent("mt-ammurobbery:server:ItensVitrines")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownVitrines4')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarVitrine5')
AddEventHandler("mt-ammurobbery:client:RoubarVitrine5", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownVitrines5", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("vitrine5", "SEARCHING...", 5000, false, true, {
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
        TriggerServerEvent("mt-ammurobbery:server:ItensVitrines")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownVitrines5')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarVitrine6')
AddEventHandler("mt-ammurobbery:client:RoubarVitrine6", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownVitrines6", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("vitrine5", "SEARCHING...", 5000, false, true, {
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
        TriggerServerEvent("mt-ammurobbery:server:ItensVitrines")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownVitrines6')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarBalas')
AddEventHandler("mt-ammurobbery:client:RoubarBalas", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownBalas", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("balas", "SEARCHING...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("mt-ammurobbery:server:ItensBalas")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownBalas')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarBalas2')
AddEventHandler("mt-ammurobbery:client:RoubarBalas2", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownBalas2", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("balas2", "SEARCHING...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("mt-ammurobbery:server:ItensBalas")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownBalas2')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarBalas3')
AddEventHandler("mt-ammurobbery:client:RoubarBalas3", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownBalas3", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("balas3", "SEARCHING...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("mt-ammurobbery:server:ItensBalas")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownBalas3')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

RegisterNetEvent('mt-ammurobbery:client:RoubarColetes')
AddEventHandler("mt-ammurobbery:client:RoubarColetes", function()
    local pos = GetEntityCoords(PlayerPedId())
    QBCore.Functions.TriggerCallback("mt-ammurobbery:CooldownColetes", function(cooldown)
        if not cooldown then
    QBCore.Functions.Progressbar("coletes", "SEARCHING...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_player",
        flags = 16,
    }, {}, {}, function() 
        local playerPed = PlayerPedId()
        local success = exports['qb-lock']:StartLockPickCircle(1,30)
   if success then
        PoliceCall()
        TriggerServerEvent("mt-ammurobbery:server:ItensColetes")
        TriggerServerEvent('mt-ammurobbery:Server:CooldownColetes')
        StopAnimTask(ped, dict, "machinic_loop_mechandplayer", 1.0)
        ClearPedTasks(playerPed)
    else
        QBCore.Functions.Notify("Failed!", "error")
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
        ClearPedTasks(playerPed)
        end
    end)
    else
        QBCore.Functions.Notify("The store was recently robbed and is empty...")
        end
    end)
end)

-- Function de alerta a policia
function PoliceCall()
    local chance = 75
    if GetClockHours() >= 0 and GetClockHours() <= 6 then
        chance = 50
    end
    if math.random(1, 100) <= chance then
        TriggerServerEvent('police:server:policeAlert', 'AMMUNATION ROBBERY IN PROGRESS')
    end
end