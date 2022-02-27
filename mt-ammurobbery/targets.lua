local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("vitrine1", vector3(20.55, -1105.46, 29.8), 1.5, 1, {
        name = "vitrine1",
        heading = 250,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarVitrine",
                icon = "fas fa-sack-dollar",
                label = 'Rob showcase'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("vitrine2", vector3(22.31, -1106.15, 29.8), 1.5, 1, {
        name = "vitrine2",
        heading = 70,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarVitrine2",
                icon = "fas fa-sack-dollar",
                label = 'Rob showcase'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("vitrine3", vector3(23.32, -1107.87, 29.8), 1.5, 1, {
        name = "vitrine3",
        heading = 340,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarVitrine3",
                icon = "fas fa-sack-dollar",
                label = 'Rob showcase'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("vitrine4", vector3(23.15, -1109.43, 29.8), 1.5, 1, {
        name = "vitrine4",
        heading = 25,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarVitrine4",
                icon = "fas fa-sack-dollar",
                label = 'Rob showcase'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("vitrine5", vector3(17.8, -1109.83, 29.8), 1.5, 1, {
        name = "vitrine5",
        heading = 340,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarVitrine5",
                icon = "fas fa-sack-dollar",
                label = 'Rob showcase'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("vitrine6", vector3(16.96, -1111.67, 29.8), 1.5, 1, {
        name = "vitrine6",
        heading = 340,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarVitrine6",
                icon = "fas fa-sack-dollar",
                label = 'Rob showcase'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("balas1", vector3(20.9, -1103.71, 29.8), 1.5, 0.5, {
        name = "balas1",
        heading = 70,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarBalas",
                icon = "fas fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("balas2", vector3(24.6, -1105.03, 29.8), 1.5, 0.5, {
        name = "balas2",
        heading = 70,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarBalas2",
                icon = "fas fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("balas3", vector3(22.8, -1104.42, 29.8), 1.5, 0.5, {
        name = "balas3",
        heading = 70,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarBalas3",
                icon = "fas fa-sack-dollar",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)

Citizen.CreateThread(function ()
    exports['qb-target']:AddBoxZone("coletes", vector3(16.36, -1109.5, 29.8), 1.5, 0.5, {
        name = "coletes",
        heading = 340,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "mt-ammurobbery:client:RoubarColetes",
                icon = "fas fa-shield",
                label = 'Rob Shelf'
            },
        },
        distance = 1.5
    })
end)