TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("::{korioz#0110}::jobs_civil:pay")
AddEventHandler("::{korioz#0110}::jobs_civil:pay", function(money)
    local _source = source

    if money < 1000 then
        local xPlayer = ESX.GetPlayerFromId(_source)
        xPlayer.addAccountMoney('cash', money)
        TriggerEvent('::{korioz#0110}::esx:customDiscordLog', "Joueur : " .. GetPlayerName(_source) .. " [" .. _source .. "] (" .. ESX.GetIdentifierFromId(_source) .. ") - JOBS CIVIL ARGENT : " .. money)
    else
        DropPlayer("NTM FDP DOU TU CHEAT SUR NeverLife")
    end
end)