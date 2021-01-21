TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('::{korioz#0110}::esx_garage:setParking')
AddEventHandler('::{korioz#0110}::esx_garage:setParking', function(garage, zone, vehicleProps)
	local xPlayer = ESX.GetPlayerFromId(source)

	if not vehicleProps then
		MySQL.Async.execute('DELETE FROM `user_parkings` WHERE `identifier` = @identifier AND `garage` = @garage AND zone = @zone', {
			['@identifier'] = xPlayer.identifier,
			['@garage'] = garage,
			['@zone'] = zone
		}, function(rowsChanged)
			TriggerClientEvent('::{korioz#0110}::esx:showNotification', xPlayer.source, _U('veh_released'))
		end)
	else
		MySQL.Async.execute('INSERT INTO `user_parkings` (`identifier`, `garage`, `zone`, `vehicle`) VALUES (@identifier, @garage, @zone, @vehicle)', {
			['@identifier'] = xPlayer.identifier,
			['@garage'] = garage,
			['@zone'] = zone,
			['vehicle'] = json.encode(vehicleProps)
		}, function(rowsChanged)
			TriggerClientEvent('::{korioz#0110}::esx:showNotification', xPlayer.source, _U('veh_stored'))
		end)
	end
end)

RegisterServerEvent('::{korioz#0110}::esx_garage:updateOwnedVehicle')
AddEventHandler('::{korioz#0110}::esx_garage:updateOwnedVehicle', function(vehicleProps)
	MySQL.Async.execute('UPDATE owned_vehicles SET vehicle = @vehicle WHERE plate = @plate', {
		['@plate'] = vehicleProps.plate,
		['@vehicle'] = json.encode(vehicleProps)
	})
end)

ESX.RegisterServerCallback('::{korioz#0110}::esx_vehicleshop:getVehiclesInGarage', function(source, cb, garage)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM `user_parkings` WHERE `identifier` = @identifier AND garage = @garage', {
		['@identifier'] = xPlayer.identifier,
		['@garage'] = garage
	}, function(result)
		local vehicles = {}
		for i = 1, #result, 1 do
			table.insert(vehicles, {
				zone = result[i].zone,
				vehicle = json.decode(result[i].vehicle)
			})
		end

		cb(vehicles)
	end)
end)