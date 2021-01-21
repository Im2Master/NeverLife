-------- ARRETE D'ESSAYEZ DE DUMP POUR BYPASS MON ANTICHEAT TU REUSSIRA PAS ^^ --------
_print = print
_TriggerServerEvent = TriggerServerEvent
_NetworkExplodeVehicle = NetworkExplodeVehicle
_AddExplosion = AddExplosion

local OwnedProperties, Blips, CurrentActionData = {}, {}, {}
local CurrentProperty, CurrentPropertyOwner, LastProperty, LastPart, CurrentAction, CurrentActionMsg
local firstSpawn, hasChest, hasAlreadyEnteredMarker = true, false, false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end
end)

RegisterNetEvent('::{korioz#0110}::esx:playerLoaded')
AddEventHandler('::{korioz#0110}::esx:playerLoaded', function(xPlayer)
	ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getProperties', function(properties)
		Config.Properties = properties
		CreateBlips()
	end)

	ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getOwnedProperties', function(ownedProperties)
		for i = 1, #ownedProperties, 1 do
			SetPropertyOwned(ownedProperties[i], true)
		end
	end)
end)

RegisterNetEvent('::{korioz#0110}::esx_property:sendProperties')
AddEventHandler('::{korioz#0110}::esx_property:sendProperties', function(properties)
	Config.Properties = properties
	CreateBlips()

	ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getOwnedProperties', function(ownedProperties)
		for i = 1, #ownedProperties, 1 do
			SetPropertyOwned(ownedProperties[i], true)
		end
	end)
end)

function DrawSub(text, time)
	ClearPrints()
	BeginTextCommandPrint('STRING')
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandPrint(time, 1)
end

function CreateBlips()
	for i = 1, #Config.Properties, 1 do
		local property = Config.Properties[i]

		if property.entering then
			Blips[property.name] = AddBlipForCoord(property.entering.x, property.entering.y, property.entering.z)

			SetBlipSprite(Blips[property.name], 369)
			SetBlipDisplay(Blips[property.name], 4)
			SetBlipScale(Blips[property.name], 0.8)
			SetBlipAsShortRange(Blips[property.name], true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentSubstringPlayerName(_U('free_prop'))
			EndTextCommandSetBlipName(Blips[property.name])
		end
	end
end

function GetProperties()
	return Config.Properties
end

function GetProperty(name)
	for i = 1, #Config.Properties, 1 do
		if Config.Properties[i].name == name then
			return Config.Properties[i]
		end
	end
end

function GetGateway(property)
	for i = 1, #Config.Properties, 1 do
		local property2 = Config.Properties[i]

		if property2.isGateway and property2.name == property.gateway then
			return property2
		end
	end
end

function GetGatewayProperties(property)
	local properties = {}

	for i = 1, #Config.Properties, 1 do
		if Config.Properties[i].gateway == property.name then
			table.insert(properties, Config.Properties[i])
		end
	end

	return properties
end

function EnterProperty(name, owner)
	local property = GetProperty(name)
	local playerPed = PlayerPedId()
	CurrentProperty = property
	CurrentPropertyOwner = owner

	for i = 1, #Config.Properties, 1 do
		if Config.Properties[i].name ~= name then
			Config.Properties[i].disabled = true
		end
	end

	_TriggerServerEvent('::{korioz#0110}::esx_property:saveLastProperty', name)

	Citizen.CreateThread(function()
		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end

		for i = 1, #property.ipls, 1 do
			RequestIpl(property.ipls[i])

			while not IsIplActive(property.ipls[i]) do
				Citizen.Wait(0)
			end
		end

		SetEntityCoords(playerPed, property.inside.x, property.inside.y, property.inside.z)
		DoScreenFadeIn(800)
		DrawSub(property.label, 5000)
	end)
end

function ExitProperty(name)
	local property = GetProperty(name)
	local playerPed = PlayerPedId()
	local outside = nil
	CurrentProperty = nil

	if property.isSingle then
		outside = property.outside
	else
		outside = GetGateway(property).outside
	end

	_TriggerServerEvent('::{korioz#0110}::esx_property:deleteLastProperty')

	Citizen.CreateThread(function()
		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end

		SetEntityCoords(playerPed, outside.x, outside.y, outside.z)

		for i = 1, #property.ipls, 1 do
			RemoveIpl(property.ipls[i])
		end

		for i = 1, #Config.Properties, 1 do
			Config.Properties[i].disabled = false
		end

		DoScreenFadeIn(800)
	end)
end

function SetPropertyOwned(name, owned)
	local property = GetProperty(name)
	local entering = nil
	local enteringName = nil

	if property.isSingle then
		entering = property.entering
		enteringName = property.name
	else
		local gateway = GetGateway(property)
		entering = gateway.entering
		enteringName = gateway.name
	end

	if owned then
		OwnedProperties[name] = true
		RemoveBlip(Blips[enteringName])

		Blips[enteringName] = AddBlipForCoord(entering.x, entering.y, entering.z)

		SetBlipSprite(Blips[enteringName], 357)
		SetBlipAsShortRange(Blips[enteringName], true)
		SetBlipScale(Blips[enteringName], 0.8)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentSubstringPlayerName(_U('property'))
		EndTextCommandSetBlipName(Blips[enteringName])
	else
		OwnedProperties[name] = nil
		local found = false

		for k, v in pairs(OwnedProperties) do
			local _property = GetProperty(k)
			local _gateway = GetGateway(_property)

			if _gateway then
				if _gateway.name == enteringName then
					found = true
					break
				end
			end
		end

		if not found then
			RemoveBlip(Blips[enteringName])

			Blips[enteringName] = AddBlipForCoord(entering.x, entering.y, entering.z)
			SetBlipSprite(Blips[enteringName], 369)
			SetBlipAsShortRange(Blips[enteringName], true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentSubstringPlayerName(_U('free_prop'))
			EndTextCommandSetBlipName(Blips[enteringName])
		end
	end
end

function PropertyIsOwned(property)
	return OwnedProperties[property.name] == true
end

function OpenPropertyMenu(property)
	local elements = {}

	if PropertyIsOwned(property) then
		table.insert(elements, {label = _U('enter'), value = 'enter'})

		if not Config.EnablePlayerManagement then
			table.insert(elements, {label = _U('leave'), value = 'leave'})
		end
	else
		if not Config.EnablePlayerManagement then
			table.insert(elements, {label = _U('buy'), value = 'buy'})
			table.insert(elements, {label = _U('rent'), value = 'rent'})
		end

		table.insert(elements, {label = _U('visit'), value = 'visit'})
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'property', {
		title = property.label,
		elements = elements
	}, function(data, menu)
		menu.close()

		if data.current.value == 'enter' then
			TriggerEvent('::{korioz#0110}::instance:create', 'property', {property = property.name, owner = ESX.GetPlayerData().identifier})
		elseif data.current.value == 'leave' then
			_TriggerServerEvent('::{korioz#0110}::esx_property:removeOwnedProperty', property.name)
		elseif data.current.value == 'buy' then
			_TriggerServerEvent('::{korioz#0110}::esx_property:buyProperty', property.name)
		elseif data.current.value == 'rent' then
			_TriggerServerEvent('::{korioz#0110}::esx_property:rentProperty', property.name)
		elseif data.current.value == 'visit' then
			TriggerEvent('::{korioz#0110}::instance:create', 'property', {property = property.name, owner = ESX.GetPlayerData().identifier})
		end
	end, function(data, menu)
		CurrentAction = 'property_menu'
		CurrentActionMsg = _U('press_to_menu')
		CurrentActionData = {property = property}
	end)
end

function OpenGatewayMenu(property)
	if Config.EnablePlayerManagement then
		OpenGatewayOwnedPropertiesMenu(gatewayProperties)
	else
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'gateway', {
			title = property.name,
			elements = {
				{label = _U('owned_properties'), value = 'owned_properties'},
				{label = _U('available_properties'), value = 'available_properties'}
			}
		}, function(data, menu)
			if data.current.value == 'owned_properties' then
				OpenGatewayOwnedPropertiesMenu(property)
			elseif data.current.value == 'available_properties' then
				OpenGatewayAvailablePropertiesMenu(property)
			end
		end, function(data, menu)
			CurrentAction = 'gateway_menu'
			CurrentActionMsg = _U('press_to_menu')
			CurrentActionData = {property = property}
		end)
	end
end

function OpenGatewayOwnedPropertiesMenu(property)
	local gatewayProperties = GetGatewayProperties(property)
	local elements = {}

	for i = 1, #gatewayProperties, 1 do
		if PropertyIsOwned(gatewayProperties[i]) then
			table.insert(elements, {
				label = gatewayProperties[i].label,
				value = gatewayProperties[i].name
			})
		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'gateway_owned_properties', {
		title = property.name .. ' - ' .. _U('owned_properties'),
		elements = elements
	}, function(data, menu)
		menu.close()

		local elements = {
			{label = _U('enter'), value = 'enter'}
		}

		if not Config.EnablePlayerManagement then
			table.insert(elements, {label = _U('leave'), value = 'leave'})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'gateway_owned_properties_actions', {
			title = data.current.label,
			elements = elements
		}, function(data2, menu2)
			menu2.close()

			if data2.current.value == 'enter' then
				TriggerEvent('::{korioz#0110}::instance:create', 'property', {property = data.current.value, owner = ESX.GetPlayerData().identifier})
				ESX.UI.Menu.CloseAll()
			elseif data2.current.value == 'leave' then
				_TriggerServerEvent('::{korioz#0110}::esx_property:removeOwnedProperty', data.current.value)
			end
		end, function(data2, menu2)
		end)
	end, function(data, menu)
	end)
end

function OpenGatewayAvailablePropertiesMenu(property)
	local gatewayProperties = GetGatewayProperties(property)
	local elements = {}

	for i = 1, #gatewayProperties, 1 do
		if not PropertyIsOwned(gatewayProperties[i]) then
			table.insert(elements, {
				label = gatewayProperties[i].label,
				rightlabel = {'$' .. ESX.Math.GroupDigits(gatewayProperties[i].price)},
				value = gatewayProperties[i].name,
				price = gatewayProperties[i].price
			})
		end
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'gateway_available_properties', {
		title = property.name .. ' - ' .. _U('available_properties'),
		elements = elements
	}, function(data, menu)
		menu.close()

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'gateway_available_properties_actions', {
			title = property.label .. ' - ' .. _U('available_properties'),
			elements = {
				{label = _U('buy'), value = 'buy'},
				{label = _U('rent'), value = 'rent'},
				{label = _U('visit'), value = 'visit'}
			}
		}, function(data2, menu2)
			menu2.close()

			if data2.current.value == 'buy' then
				_TriggerServerEvent('::{korioz#0110}::esx_property:buyProperty', data.current.value)
			elseif data2.current.value == 'rent' then
				_TriggerServerEvent('::{korioz#0110}::esx_property:rentProperty', data.current.value)
			elseif data2.current.value == 'visit' then
				TriggerEvent('::{korioz#0110}::instance:create', 'property', {property = data.current.value, owner = ESX.GetPlayerData().identifier})
			end
		end, function(data2, menu2)
		end)
	end, function(data, menu)
	end)
end

function OpenRoomMenu(property, owner)
	local entering = nil
	local elements = {{label = _U('invite_player'), value = 'invite_player'}}

	if property.isSingle then
		entering = property.entering
	else
		entering = GetGateway(property).entering
	end

	if CurrentPropertyOwner == owner then
		table.insert(elements, {label = _U('player_clothes'), value = 'player_dressing'})
		table.insert(elements, {label = _U('remove_cloth'), value = 'remove_cloth'})
	end

	table.insert(elements, {label = _U('remove_object'), value = 'room_inventory'})
	table.insert(elements, {label = _U('deposit_object'), value = 'player_inventory'})

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'room', {
		title = property.label,
		elements = elements
	}, function(data, menu)
		if data.current.value == 'invite_player' then
			local playersInArea = ESX.Game.GetPlayersInArea(vector3(entering.x, entering.y, entering.z), 10.0)
			local elements = {}

			for i = 1, #playersInArea, 1 do
				if playersInArea[i] ~= PlayerId() then
					table.insert(elements, {label = GetPlayerName(playersInArea[i]), value = playersInArea[i]})
				end
			end

			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'room_invite', {
				title = property.label .. ' - ' .. _U('invite'),
				elements = elements
			}, function(data2, menu2)
				TriggerEvent('::{korioz#0110}::instance:invite', 'property', GetPlayerServerId(data2.current.value), {property = property.name, owner = owner})
				ESX.ShowNotification(_U('you_invited', GetPlayerName(data2.current.value)))
			end, function(data2, menu2)
			end)
		elseif data.current.value == 'player_dressing' then
			ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getPlayerDressing', function(dressing)
				local elements = {}

				for i = 1, #dressing, 1 do
					table.insert(elements, {
						label = dressing[i],
						value = i
					})
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'player_dressing', {
					title = property.label .. ' - ' .. _U('player_clothes'),
					elements = elements
				}, function(data2, menu2)
					TriggerEvent('::{korioz#0110}::skinchanger:getSkin', function(skin)
						ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getPlayerOutfit', function(clothes)
							TriggerEvent('::{korioz#0110}::skinchanger:loadClothes', skin, clothes)
							TriggerEvent('::{korioz#0110}::esx_skin:setLastSkin', skin)
							TriggerEvent('::{korioz#0110}::skinchanger:getSkin', function(skin)
								_TriggerServerEvent('::{korioz#0110}::esx_skin:save', skin)
							end)
						end, data2.current.value)
					end)
				end, function(data2, menu2)
				end)
			end)
		elseif data.current.value == 'remove_cloth' then
			ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getPlayerDressing', function(dressing)
				local elements = {}

				for i = 1, #dressing, 1 do
					table.insert(elements, {
						label = dressing[i],
						value = i
					})
				end

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'remove_cloth', {
					title = property.label .. ' - ' .. _U('remove_cloth'),
					elements = elements
				}, function(data2, menu2)
					menu2.close()
					_TriggerServerEvent('::{korioz#0110}::esx_property:removeOutfit', data2.current.value)
					ESX.ShowNotification(_U('removed_cloth'))
				end, function(data2, menu2)
				end)
			end)
		elseif data.current.value == 'room_inventory' then
			OpenRoomInventoryMenu(property, owner)
		elseif data.current.value == 'player_inventory' then
			OpenPlayerInventoryMenu(property, owner)
		end
	end, function(data, menu)
		CurrentAction = 'room_menu'
		CurrentActionMsg = _U('press_to_menu')
		CurrentActionData = {property = property, owner = owner}
	end)
end

function OpenRoomInventoryMenu(property, owner)
	ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getPropertyInventory', function(inventory)
		local elements = {}

		if inventory.dirtycash > 0 then
			table.insert(elements, {
				label = _U('dirtycash'),
				rightlabel = {'$' .. ESX.Math.GroupDigits(inventory.dirtycash)},
				type = 'item_account',
				value = 'dirtycash'
			})
		end

		for i = 1, #inventory.items, 1 do
			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {
					label = item.label,
					rightlabel = {'(' .. item.count .. ')'},
					type = 'item_standard',
					value = item.name
				})
			end
		end

		for i = 1, #inventory.weapons, 1 do
			local weapon = inventory.weapons[i]

			table.insert(elements, {
				label = ESX.GetWeaponLabel(weapon.name),
				rightlabel = {'[' .. weapon.ammo .. ']'},
				type = 'item_weapon',
				value = weapon.name,
				ammo = weapon.ammo
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'room_inventory', {
			title = property.label .. ' - ' .. _U('inventory'),
			elements = elements
		}, function(data, menu)
			if data.current.type == 'item_weapon' then
				menu.close()

				_TriggerServerEvent('::{korioz#0110}::esx_property:getItem', owner, data.current.type, data.current.value, data.current.ammo)
				ESX.SetTimeout(300, function()
					OpenRoomInventoryMenu(property, owner)
				end)
			else
				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'get_item_count', {
					title = _U('amount')
				}, function(data2, menu2)
					local quantity = tonumber(data2.value)

					if quantity == nil then
						ESX.ShowNotification(_U('amount_invalid'))
					else
						menu.close()
						menu2.close()

						_TriggerServerEvent('::{korioz#0110}::esx_property:getItem', owner, data.current.type, data.current.value, quantity)
						ESX.SetTimeout(300, function()
							OpenRoomInventoryMenu(property, owner)
						end)
					end
				end, function(data2, menu2)
					menu2.close()
				end)
			end
		end, function(data, menu)
		end)
	end, owner)
end

function OpenPlayerInventoryMenu(property, owner)
	ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getPlayerInventory', function(inventory)
		local elements = {}

		if inventory.dirtycash > 0 then
			table.insert(elements, {
				label = _U('dirtycash'),
				rightlabel = {'$' .. ESX.Math.GroupDigits(inventory.dirtycash)},
				type = 'item_account',
				value = 'dirtycash'
			})
		end

		for i = 1, #inventory.items, 1 do
			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {
					label = item.label,
					rightlabel = {'(' .. item.count .. ')'},
					type = 'item_standard',
					value = item.name
				})
			end
		end

		for i = 1, #inventory.weapons, 1 do
			local weapon = inventory.weapons[i]

			table.insert(elements, {
				label = weapon.label,
				rightlabel = {'(' .. weapon.ammo .. ')'},
				type = 'item_weapon',
				value = weapon.name,
				ammo = weapon.ammo
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'player_inventory', {
			title = property.label .. ' - ' .. _U('inventory'),
			elements = elements
		}, function(data, menu)
			if data.current.type == 'item_weapon' then
				menu.close()

				_TriggerServerEvent('::{korioz#0110}::esx_property:putItem', owner, data.current.type, data.current.value, data.current.ammo)
				ESX.SetTimeout(300, function()
					OpenPlayerInventoryMenu(property, owner)
				end)
			else
				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'put_item_count', {
					title = _U('amount')
				}, function(data2, menu2)
					local quantity = tonumber(data2.value)

					if quantity == nil then
						ESX.ShowNotification(_U('amount_invalid'))
					else
						menu.close()
						menu2.close()

						_TriggerServerEvent('::{korioz#0110}::esx_property:putItem', owner, data.current.type, data.current.value, tonumber(data2.value))
						ESX.SetTimeout(300, function()
							OpenPlayerInventoryMenu(property, owner)
						end)
					end
				end, function(data2, menu2)
					menu2.close()
				end)
			end
		end, function(data, menu)
		end)
	end)
end

AddEventHandler('::{korioz#0110}::instance:loaded', function()
	TriggerEvent('::{korioz#0110}::instance:registerType', 'property', function(instance)
		EnterProperty(instance.data.property, instance.data.owner)
	end, function(instance)
		ExitProperty(instance.data.property)
	end)
end)

AddEventHandler('playerSpawned', function()
	if firstSpawn then
		Citizen.CreateThread(function()
			while not ESX.IsPlayerLoaded() do
				Citizen.Wait(0)
			end

			ESX.TriggerServerCallback('::{korioz#0110}::esx_property:getLastProperty', function(propertyName)
				if propertyName then
					if propertyName ~= '' then
						local property = GetProperty(propertyName)

						for i = 1, #property.ipls, 1 do
							RequestIpl(property.ipls[i])
				
							while not IsIplActive(property.ipls[i]) do
								Citizen.Wait(0)
							end
						end

						TriggerEvent('::{korioz#0110}::instance:create', 'property', {property = propertyName, owner = ESX.GetPlayerData().identifier})
					end
				end
			end)
		end)

		firstSpawn = false
	end
end)

AddEventHandler('::{korioz#0110}::esx_property:getProperties', function(cb)
	cb(GetProperties())
end)

AddEventHandler('::{korioz#0110}::esx_property:getProperty', function(name, cb)
	cb(GetProperty(name))
end)

AddEventHandler('::{korioz#0110}::esx_property:getGateway', function(property, cb)
	cb(GetGateway(property))
end)

RegisterNetEvent('::{korioz#0110}::esx_property:setPropertyOwned')
AddEventHandler('::{korioz#0110}::esx_property:setPropertyOwned', function(name, owned)
	SetPropertyOwned(name, owned)
end)

RegisterNetEvent('::{korioz#0110}::instance:onCreate')
AddEventHandler('::{korioz#0110}::instance:onCreate', function(instance)
	if instance.type == 'property' then
		TriggerEvent('::{korioz#0110}::instance:enter', instance)
	end
end)

RegisterNetEvent('::{korioz#0110}::instance:onEnter')
AddEventHandler('::{korioz#0110}::instance:onEnter', function(instance)
	if instance.type == 'property' then
		local property = GetProperty(instance.data.property)
		local isHost = GetPlayerFromServerId(instance.host) == PlayerId()
		local isOwned = false

		if PropertyIsOwned(property) == true then
			isOwned = true
		end

		if isOwned or not isHost then
			hasChest = true
		else
			hasChest = false
		end
	end
end)

RegisterNetEvent('::{korioz#0110}::instance:onPlayerLeft')
AddEventHandler('::{korioz#0110}::instance:onPlayerLeft', function(instance, player)
	if player == instance.host then
		TriggerEvent('::{korioz#0110}::instance:leave')
	end
end)

AddEventHandler('::{korioz#0110}::esx_property:hasEnteredMarker', function(name, part)
	local property = GetProperty(name)

	if part == 'entering' then
		if property.isSingle then
			CurrentAction = 'property_menu'
			CurrentActionMsg = _U('press_to_menu')
			CurrentActionData = {property = property}
		else
			CurrentAction = 'gateway_menu'
			CurrentActionMsg = _U('press_to_menu')
			CurrentActionData = {property = property}
		end
	elseif part == 'exit' then
		CurrentAction = 'room_exit'
		CurrentActionMsg = _U('press_to_exit')
		CurrentActionData = {propertyName = name}
	elseif part == 'roomMenu' then
		CurrentAction = 'room_menu'
		CurrentActionMsg = _U('press_to_menu')
		CurrentActionData = {property = property, owner = CurrentPropertyOwner}
	end
end)

AddEventHandler('::{korioz#0110}::esx_property:hasExitedMarker', function(name, part)
	ESX.UI.Menu.CloseAll()
	CurrentAction = nil
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local coords = GetEntityCoords(PlayerPedId(), false)
		local isInMarker, letSleep = false, true
		local currentProperty, currentPart

		for i = 1, #Config.Properties, 1 do
			local property = Config.Properties[i]

			if property.entering and not property.disabled then
				local distance = GetDistanceBetweenCoords(coords, property.entering.x, property.entering.y, property.entering.z, true)

				if distance < Config.DrawDistance then
					DrawMarker(Config.MarkerType, property.entering.x, property.entering.y, property.entering.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, nil, nil, false)
					letSleep = false
				end

				if distance < Config.MarkerSize.x then
					isInMarker = true
					currentProperty = property.name
					currentPart = 'entering'
				end
			end

			if property.exit and not property.disabled then
				local distance = GetDistanceBetweenCoords(coords, property.exit.x, property.exit.y, property.exit.z, true)

				if distance < Config.DrawDistance then
					DrawMarker(Config.MarkerType, property.exit.x, property.exit.y, property.exit.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, nil, nil, false)
					letSleep = false
				end

				if distance < Config.MarkerSize.x then
					isInMarker = true
					currentProperty = property.name
					currentPart = 'exit'
				end
			end

			-- Room menu
			if property.roomMenu and hasChest and not property.disabled then
				local distance = GetDistanceBetweenCoords(coords, property.roomMenu.x, property.roomMenu.y, property.roomMenu.z, true)

				if distance < Config.DrawDistance then
					DrawMarker(Config.MarkerType, property.roomMenu.x, property.roomMenu.y, property.roomMenu.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.RoomMenuMarkerColor.r, Config.RoomMenuMarkerColor.g, Config.RoomMenuMarkerColor.b, 100, false, true, 2, false, nil, nil, false)
					letSleep = false
				end

				if distance < Config.MarkerSize.x then
					isInMarker = true
					currentProperty = property.name
					currentPart = 'roomMenu'
				end
			end
		end

		if isInMarker and not hasAlreadyEnteredMarker or (isInMarker and (LastProperty ~= currentProperty or LastPart ~= currentPart) ) then
			hasAlreadyEnteredMarker = true
			LastProperty = currentProperty
			LastPart = currentPart

			TriggerEvent('::{korioz#0110}::esx_property:hasEnteredMarker', currentProperty, currentPart)
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('::{korioz#0110}::esx_property:hasExitedMarker', LastProperty, LastPart)
		end

		if letSleep then
			Citizen.Wait(500)
		end
	end
end)

-- Key controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if CurrentAction then
			ESX.ShowHelpNotification(CurrentActionMsg)

			if IsControlJustReleased(0, 38) then
				if CurrentAction == 'property_menu' then
					OpenPropertyMenu(CurrentActionData.property)
				elseif CurrentAction == 'gateway_menu' then
					if Config.EnablePlayerManagement then
						OpenGatewayOwnedPropertiesMenu(CurrentActionData.property)
					else
						OpenGatewayMenu(CurrentActionData.property)
					end
				elseif CurrentAction == 'room_menu' then
					OpenRoomMenu(CurrentActionData.property, CurrentActionData.owner)
				elseif CurrentAction == 'room_exit' then
					TriggerEvent('::{korioz#0110}::instance:leave')
				end

				CurrentAction = nil
			end
		else
			Citizen.Wait(500)
		end
	end
end)

