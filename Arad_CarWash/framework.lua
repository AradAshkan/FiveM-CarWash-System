local server = IsDuplicityVersion()
Framework = nil

if Config.Framework == 'esxlegacy' then
    TriggerEvent('esx:getSharedObject', function(obj)
        Framework = obj
    end)

    if not server then
        PlayerData = Framework.GetPlayerData()

        Notify = function(txt, notif_type, time)
            TriggerEvent('esx:showNotification', txt, notif_type)
        end

        TriggerCallback = function(cb_name, f, ...)
            Framework.TriggerServerCallback(cb_name, f, ...)
        end
    else
        RegisterCallback = function(cb_name, f)
            Framework.RegisterServerCallback(cb_name, f)
        end
        Notify = function(src, txt, notif_type, time)
            TriggerClientEvent('esx:showNotification', src, txt, notif_type)
        end

        GetPlayer = function(id)
            if type(id) == 'number' then
                return Framework.GetPlayerFromId(id)
            else
                return Framework.GetPlayerFromIdentifier(identifier)
            end
        end

        GetPlayerMoney = function(player, amount)
            if player.bank >= amount then
                player.removeBank(amount)
                return true
            elseif player.money >= amount then
                player.removeMoney(amount)
                return true
            else
                return false
            end
        end
    end
end
