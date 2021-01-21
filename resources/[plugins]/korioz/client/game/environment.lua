--[[ Environment ]]--
-- Time Sync --
Citizen.CreateThread(function()
	while true do
		local _, _, _, hour, minute = GetUtcTime()
		NetworkOverrideClockTime(hour, minute, 0)
		Citizen.Wait(60000)
	end
end)

-- Weather Sync --
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		SetWeatherTypeNowPersist('EXTRASUNNY')
	end
end)

local safeZones = {
	vector3(-821.2, -127.65, 28.18),
	vector3(218.76, -802.87, 30.09),
	vector3(429.54, -981.86, 30.71),
	vector3(233.12, -419.19, -118.2), -- Avocat By NeverLife
	vector3(245.5, -324.2, -118.77),
	vector3(-38.22, -1100.84, 26.42),
	vector3(238.25, -406.03, 47.92), -- Devant Avocat By NeverLife
	vector3(295.68, -586.45, 43.14),
	vector3(-211.34, -1322.06, 30.89)
}

local disabledSafeZonesKeys = {
	{group = 2, key = 37, message = '~r~Vous ne pouvez pas sortir d\'arme en SafeZone'},
	{group = 0, key = 24, message = '~r~Vous ne pouvez pas faire ceci en SafeZone'},
	{group = 0, key = 69, message = '~r~Vous ne pouvez pas faire ceci en SafeZone'},
	{group = 0, key = 92, message = '~r~Vous ne pouvez pas faire ceci en SafeZone'},
	{group = 0, key = 106, message = '~r~Vous ne pouvez pas faire ceci en SafeZone'},
	{group = 0, key = 168, message = '~r~Vous ne pouvez pas faire ceci en SafeZone'},
	{group = 0, key = 160, message = '~r~Vous ne pouvez pas faire ceci en SafeZone'},
	{group = 0, key = 160, message = '~r~Vous ne pouvez pas faire ceci en SafeZone'}
}

local notifIn, notifOut = false, false
local closestZone = 1

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end

	while true do
		local plyPed = PlayerPedId()
		local plyCoords = GetEntityCoords(plyPed, false)
		local minDistance = 100000

		for i = 1, #safeZones, 1 do
			local dist = #(safeZones[i] - plyCoords)

			if dist < minDistance then
				minDistance = dist
				closestZone = i
			end
		end

		Citizen.Wait(15000)
	end
end)

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end

	while true do
		Citizen.Wait(0)
		local plyPed = PlayerPedId()
		local plyCoords = GetEntityCoords(plyPed, false)
		local dist = #(safeZones[closestZone] - plyCoords)

		if dist <= 50 then
			if not notifIn then
				NetworkSetFriendlyFireOption(false)
				SetCurrentPedWeapon(plyPed, `WEAPON_UNARMED`, true)
				ESX.ShowNotification('~g~Vous êtes en SafeZone')

				notifIn = true
				notifOut = false
			end
		else
			if not notifOut then
				NetworkSetFriendlyFireOption(true)
				ESX.ShowNotification('~r~Vous n\'êtes plus en SafeZone')

				notifOut = true
				notifIn = false
			end
		end

		if notifIn then
			for vehicle in KRZ.Game.EnumerateVehicles() do
				if not IsVehicleSeatFree(vehicle, -1) then
					SetEntityNoCollisionEntity(plyPed, vehicle, true)
					SetEntityNoCollisionEntity(vehicle, plyPed, true)
				end
			end

			DisablePlayerFiring(player, true)

			for i = 1, #disabledSafeZonesKeys, 1 do
				DisableControlAction(disabledSafeZonesKeys[i].group, disabledSafeZonesKeys[i].key, true)

				if IsDisabledControlJustPressed(disabledSafeZonesKeys[i].group, disabledSafeZonesKeys[i].key) then
					SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)

					if disabledSafeZonesKeys[i].message then
						ESX.ShowNotification(disabledSafeZonesKeys[i].message)
					end
				end
			end
		end
	end
end)