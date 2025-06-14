RegisterNetEvent('carwash:DoVehicleWashParticles', function(vehNet, use_props)
    local src = source
    TriggerClientEvent('carwash:DoVehicleWashParticles', -1, vehNet, src, use_props)
end)

RegisterCallback('carwash:CanPurchaseCarWash', function(source, cb)
    local src = source
    local Player = GetPlayer(src)
    if GetPlayerMoney(Player, Config.cost) then
        cb(true)
    else
        cb(false)
    end
end)