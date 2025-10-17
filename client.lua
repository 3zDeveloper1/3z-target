local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    for _, zone in pairs(Config.x83z) do
        exports['qb-target']:AddBoxZone(zone.name, zone.coords, zone.width, zone.length, {
            name = zone.name,
            heading = zone.heading,
            debugPoly = false,
            minZ = zone.minZ,
            maxZ = zone.maxZ
        }, {
            options = zone.options,
            distance = zone.distance or 2.0
        })
    end

    for _, modelData in pairs(Config.Models) do
        exports['qb-target']:AddTargetModel(modelData.model, {
            options = modelData.options,
            distance = modelData.distance or 2.0
        })
    end
end)
