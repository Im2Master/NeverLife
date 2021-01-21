TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('::{korioz#0110}::esx_weashop:buyItem')
AddEventHandler('::{korioz#0110}::esx_weashop:buyItem', function(itemName, categorySelected)
	if Config.Categories[categorySelected] == nil then return end
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local weapons = Config.Categories[categorySelected].weapons
	local weaponInfo, weaponFound = {}, false

	for i = 1, #weapons, 1 do
		if weapons[i].name == itemName then
			weaponInfo, weaponFound = weapons[i], true
		end
	end

	if xPlayer.getAccount('cash').money >= weaponInfo.price then
		xPlayer.removeAccountMoney('cash', weaponInfo.price)
		xPlayer.addWeapon(itemName, 42)
		TriggerClientEvent('::{korioz#0110}::esx:showNotification', _source, _U('buy') .. ESX.GetWeaponLabel(itemName))
		sendToDiscord('Never Life - LOGS', '[ARMURIE] ' ..xPlayer.getName().. ' Vient d\'acheter une arme | NOM : ' ..itemName..' au prix de : ' ..weaponInfo.price.. '', 3145658)
	else
		TriggerClientEvent('::{korioz#0110}::esx:showNotification', _source, _U('not_enough'))
	end
end)

RegisterServerEvent('::{korioz#0110}::esx_weashop:removeClip')
AddEventHandler('::{korioz#0110}::esx_weashop:removeClip', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('clip', function(source)
	TriggerClientEvent('::{korioz#0110}::esx_weashop:useClip', source)
end)

function sendToDiscord (name,message,color)
	date_local1 = os.date('%H:%M:%S', os.time())
	local date_local = date_local1
	local DiscordWebHook = "https://discord.com/api/webhooks/792925570773286942/3UaYy2YBsRhkHScAlTbFb77XMFsPfaatXdSeCtHYPUN0gIl6nDGINDrtoktesi4dE9UI"
	-- Modify here your discordWebHook username = name, content = message,embeds = embeds

local embeds = {
	{
		["title"]=message,
		["type"]="rich",
		["color"] =color,
		["footer"]=  {
			["text"]= "Heure: " ..date_local.. "",
		},
	}
}

	if message == nil or message == '' then return FALSE end
	PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end 