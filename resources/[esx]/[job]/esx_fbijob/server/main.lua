TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('::{korioz#0110}::esx_phone:registerNumber', 'fbi', _U('alert_fbi'), true, true)
TriggerEvent('::{korioz#0110}::esx_society:registerSociety', 'fbi', 'fbi', 'society_fbi', 'society_fbi', 'society_fbi', {type = 'public'})

RegisterServerEvent('::{korioz#0110}::esx_fbijob:drag')
AddEventHandler('::{korioz#0110}::esx_fbijob:drag', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'fbi' then
		local xPlayerTarget = ESX.GetPlayerFromId(target)

		if xPlayerTarget.get('cuffState').isCuffed then
			TriggerClientEvent('::{korioz#0110}::esx_fbijob:drag', target, xPlayer.source)
		end
	else
		print(('esx_fbijob: %s attempted to put in vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('::{korioz#0110}::esx_fbijob:putInVehicle')
AddEventHandler('::{korioz#0110}::esx_fbijob:putInVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'fbi' then
		local xPlayerTarget = ESX.GetPlayerFromId(target)

		if xPlayerTarget.get('cuffState').isCuffed then
			TriggerClientEvent('::{korioz#0110}::esx_fbijob:putInVehicle', target)
		end
	else
		print(('esx_fbijob: %s attempted to put in vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('::{korioz#0110}::esx_fbijob:OutVehicle')
AddEventHandler('::{korioz#0110}::esx_fbijob:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'fbi' then
		local xPlayerTarget = ESX.GetPlayerFromId(target)

		if xPlayerTarget.get('cuffState').isCuffed then
			TriggerClientEvent('::{korioz#0110}::esx_fbijob:OutVehicle', target)
		end
	else
		print(('esx_fbijob: %s attempted to drag out from vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('::{korioz#0110}::esx_fbijob:getStockItem')
AddEventHandler('::{korioz#0110}::esx_fbijob:getStockItem', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('::{korioz#0110}::esx_addoninventory:getSharedInventory', 'society_fbi', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		if count > 0 and inventoryItem.count >= count then
			if xPlayer.canCarryItem(itemName, count) then
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('::{korioz#0110}::esx:showNotification', xPlayer.source, _U('have_withdrawn', count, inventoryItem.label))
			else
				TriggerClientEvent('::{korioz#0110}::esx:showNotification', xPlayer.source, _U('quantity_invalid'))
			end
		else
			TriggerClientEvent('::{korioz#0110}::esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:getStockItems', function(source, cb)
	TriggerEvent('::{korioz#0110}::esx_addoninventory:getSharedInventory', 'society_fbi', function(inventory)
		cb(inventory.items)
	end)
end)

RegisterServerEvent('::{korioz#0110}::esx_fbijob:putStockItems')
AddEventHandler('::{korioz#0110}::esx_fbijob:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('::{korioz#0110}::esx_addoninventory:getSharedInventory', 'society_fbi', function(inventory)
		local sourceItem = xPlayer.getInventoryItem(itemName)

		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('::{korioz#0110}::esx:showNotification', xPlayer.source, _U('have_deposited', count, ESX.GetItem(itemName).label))
		else
			TriggerClientEvent('::{korioz#0110}::esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	cb({items = xPlayer.inventory})
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:getOtherPlayerData', function(source, cb, target)
	local xPlayer = ESX.GetPlayerFromId(target)

	MySQL.Async.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		local data = {
			name = GetPlayerName(target),
			job = xPlayer.job,
			job2 = xPlayer.job2,
			inventory = xPlayer.inventory,
			accounts = xPlayer.accounts,
			weapons = xPlayer.loadout,
			firstname = result[1]['firstname'],
			lastname = result[1]['lastname'],
			sex = result[1]['sex'],
			dob = result[1]['dateofbirth'],
			height = result[1]['height']
		}
	
		TriggerEvent('::{korioz#0110}::esx_license:getLicenses', target, function(licenses)
			if licenses ~= nil then
				data.licenses = licenses
			end
		end)
	
		cb(data)
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:getFineList', function(source, cb, category)
	MySQL.Async.fetchAll('SELECT * FROM fine_types WHERE category = @category', {
		['@category'] = category
	}, function(fines)
		cb(fines)
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:getVehicleInfos', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE @plate = plate', {
		['@plate'] = plate
	}, function(result)
		local retrivedInfo = {
			plate = plate
		}

		if result[1] then
			MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier',  {
				['@identifier'] = result[1].owner
			}, function(result2)
				if Config.EnableESXIdentity then
					retrivedInfo.owner = result2[1].firstname .. ' ' .. result2[1].lastname
				else
					retrivedInfo.owner = result2[1].name
				end

				cb(retrivedInfo)
			end)
		else
			cb(retrivedInfo)
		end
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:getVehicleFromPlate', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
		if result[1] ~= nil then
			MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
				['@identifier'] = result[1].owner
			}, function(result2)
				if Config.EnableESXIdentity then
					cb(result2[1].firstname .. ' ' .. result2[1].lastname, true)
				else
					cb(result2[1].name, true)
				end
			end)
		else
			cb(_U('unknown'), false)
		end
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:getArmoryWeapons', function(source, cb)
	TriggerEvent('::{korioz#0110}::esx_datastore:getSharedDataStore', 'society_fbi', function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		cb(weapons)
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:addArmoryWeapon', function(source, cb, weaponName, removeWeapon)
	local xPlayer = ESX.GetPlayerFromId(source)

	if removeWeapon then
		xPlayer.removeWeapon(weaponName)
	end

	TriggerEvent('::{korioz#0110}::esx_datastore:getSharedDataStore', 'society_fbi', function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i = 1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = weapons[i].count + 1
				foundWeapon = true
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name = weaponName,
				count = 1
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:removeArmoryWeapon', function(source, cb, weaponName)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addWeapon(weaponName, 500)

	TriggerEvent('::{korioz#0110}::esx_datastore:getSharedDataStore', 'society_fbi', function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i = 1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
				foundWeapon = true
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 0
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_fbijob:buyWeapon', function(source, cb, weaponName, type, componentNum)
	local xPlayer = ESX.GetPlayerFromId(source)
	local authorizedWeapons, selectedWeapon = Config.AuthorizedWeapons[xPlayer.job.grade_name]

	for i = 1, #authorizedWeapons, 1 do
		if authorizedWeapons[i].weapon == weaponName then
			selectedWeapon = authorizedWeapons[i]
			break
		end
	end

	if not selectedWeapon then
		print(('esx_fbijob: %s attempted to buy an invalid weapon.'):format(xPlayer.identifier))
		cb(false)
	else
		if type == 1 then
			if xPlayer.getAccount('cash').money >= selectedWeapon.price then
				xPlayer.removeAccountMoney('cash', selectedWeapon.price)
				xPlayer.addWeapon(weaponName, 100)

				cb(true)
			else
				cb(false)
			end
		elseif type == 2 then
			local price = selectedWeapon.components[componentNum]
			local weaponNum, weapon = ESX.GetWeapon(weaponName)
			local component = weapon.components[componentNum]

			if component then
				if xPlayer.getAccount('cash').money >= price then
					xPlayer.removeAccountMoney('cash', price)
					xPlayer.addWeaponComponent(weaponName, component.name)

					cb(true)
				else
					cb(false)
				end
			else
				print(('esx_fbijob: %s attempted to buy an invalid weapon component.'):format(xPlayer.identifier))
				cb(false)
			end
		end
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('::{korioz#0110}::esx_phone:removeNumber', 'fbi')
	end
end)

RegisterServerEvent('::{korioz#0110}::esx_fbijob:message')
AddEventHandler('::{korioz#0110}::esx_fbijob:message', function(target, msg)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'fbi' then
		TriggerClientEvent('::{korioz#0110}::esx:showNotification', target, msg)
	end
end)