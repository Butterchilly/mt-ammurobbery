local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false

-- Itens dados ao roubar as vitrines
RegisterServerEvent('mt-ammurobbery:server:ItensVitrines', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local quantity = math.random(1, 2)
    if prob < 30 then
        if Player.Functions.AddItem("weapon_pistol", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weapon_pistol"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end  
    elseif prob >= 30 and prob < 40 then
        if Player.Functions.AddItem("weapon_knife", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weapon_knife"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end 
    elseif prob >= 50 and prob < 60 then
        if Player.Functions.AddItem("weapon_pistol50", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["weapon_pistol50"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'This is empty...', 'error')
    end      
end)

RegisterServerEvent('mt-ammurobbery:server:ItensBalas', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local quantity = math.random(1, 2)
    if prob < 30 then
        if Player.Functions.AddItem("pistol_ammo", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["pistol_ammo"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end  
    elseif prob >= 30 and prob < 40 then
        if Player.Functions.AddItem("smg_ammo", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["smg_ammo"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'This is empty...', 'error')
    end      
end)

RegisterServerEvent('mt-ammurobbery:server:ItensColetes', function() 
    local src = source
    local Player  = QBCore.Functions.GetPlayer(src)
    local prob = math.random(1, 100)
    local quantity = math.random(1, 2)
    if prob < 30 then
        if Player.Functions.AddItem("armor", quantity) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["armor"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'you have to much in pockets.', 'error')
        end  
    else
        TriggerClientEvent('QBCore:Notify', src, 'This is empty...', 'error')
    end      
end)

-- Cooldown
RegisterServerEvent('mt-ammurobbery:Server:CooldownVitrines')
AddEventHandler('mt-ammurobbery:Server:CooldownVitrines', function()
    CooldownVitrines = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownVitrines = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownVitrines",function(source, cb)
    if CooldownVitrines then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownVitrines2')
AddEventHandler('mt-ammurobbery:Server:CooldownVitrines2', function()
    CooldownVitrines2 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownVitrines = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownVitrines2",function(source, cb)
    if CooldownVitrines2 then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownVitrines3')
AddEventHandler('mt-ammurobbery:Server:CooldownVitrines3', function()
    CooldownVitrines3 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownVitrines = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownVitrines3",function(source, cb)
    if CooldownVitrines3 then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownVitrines4')
AddEventHandler('mt-ammurobbery:Server:CooldownVitrines4', function()
    CooldownVitrines4 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownVitrines = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownVitrines4",function(source, cb)
    if CooldownVitrines4 then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownVitrines5')
AddEventHandler('mt-ammurobbery:Server:CooldownVitrines5', function()
    CooldownVitrines5 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownVitrines = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownVitrines5",function(source, cb)
    if CooldownVitrines5 then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownVitrines6')
AddEventHandler('mt-ammurobbery:Server:CooldownVitrines6', function()
    CooldownVitrines6 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownVitrines = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownVitrines6",function(source, cb)
    if CooldownVitrines6 then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownBalas')
AddEventHandler('mt-ammurobbery:Server:CooldownBalas', function()
    CooldownBalas = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownBalas = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownBalas",function(source, cb)
    if CooldownBalas then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownBalas2')
AddEventHandler('mt-ammurobbery:Server:CooldownBalas2', function()
    CooldownBalas2 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownBalas = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownBalas2",function(source, cb)
    if CooldownBalas2 then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownBalas3')
AddEventHandler('mt-ammurobbery:Server:CooldownBalas3', function()
    CooldownBalas3 = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownBalas3 = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownBalas3",function(source, cb)
    if CooldownBalas3 then
        cb(true)
    else
        cb(false)
        
    end
end)

RegisterServerEvent('mt-ammurobbery:Server:CooldownColetes')
AddEventHandler('mt-ammurobbery:Server:CooldownColetes', function()
    CooldownColetes = true
    local timer = 60000 * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            CooldownColetes = false
        end
    end
end)


QBCore.Functions.CreateCallback("mt-ammurobbery:CooldownColetes",function(source, cb)
    if CooldownColetes then
        cb(true)
    else
        cb(false)
        
    end
end)