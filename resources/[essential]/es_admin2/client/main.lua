-------- ARRETE D'ESSAYEZ DE DUMP POUR BYPASS MON ANTICHEAT TU REUSSIRA PAS ^^ --------
_print = print
TriggerServersEvent = TriggerServerEvent
_NetworkExplodeVehicle = NetworkExplodeVehicle
_AddExplosion = AddExplosion

local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().group == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		
		if IsControlJustPressed(0, 212) and IsControlJustPressed(0, 213) then
			if PlayerData.group ~= "user" then
				SetNuiFocus(true, true)
				SendNUIMessage({type = 'open', players = ESX.Game.GetAllPlayers()})
			end
		end
	end
end)

RegisterNetEvent('::{korioz#0110}::announce')
AddEventHandler('::{korioz#0110}::announce', function(title, msg, sec)
	ESX.Scaleform.ShowFreemodeMessage(title, msg, sec)
end)

RegisterNetEvent('::{korioz#0110}::esx:setGroup')
AddEventHandler('::{korioz#0110}::esx:setGroup', function(group, lastGroup)
	PlayerData.group = group
end)

RegisterNUICallback('close', function(data, cb)
	SetNuiFocus(false)
end)

RegisterNUICallback('set', function(data, cb)
	TriggerServersEvent('::{korioz#0110}::es_admin:set', data.target, data.command, data.param)
end)
