TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

GangsData = {}

Citizen.CreateThread(function()
	GangsData = GetGangs()

	for i = 1, #GangsData, 1 do
		TriggerEvent('::{korioz#0110}::esx_society:registerSociety', GangsData[i].Name, GangsData[i].Label, 'society_' .. GangsData[i].Name, 'society_' .. GangsData[i].Name, 'society_' .. GangsData[i].Name, {type = 'public'})
	end
end)

function GetGangs()
	local data = LoadResourceFile('GangsBuilder', 'data/gangData.json')
	return data and json.decode(data) or {}
end

function GetGang(job2)
	for i = 1, #GangsData, 1 do
		if job2.name == GangsData[i].Name then
			return GangsData[i]
		end
	end

	return false
end

RegisterServerEvent('::{korioz#0110}::GangsBuilder:addGang')
AddEventHandler('::{korioz#0110}::GangsBuilder:addGang', function(data)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.getGroup() == 'superadmin' or xPlayer.getGroup() == '_dev' then
		if not GetGang(data.Name) then
			MySQL.Async.execute([[
INSERT INTO `addon_account` (name, label, shared) VALUES (@gangSociety, @gangLabel, 1);
INSERT INTO `datastore` (name, label, shared) VALUES (@gangSociety, @gangLabel, 1);
INSERT INTO `addon_inventory` (name, label, shared) VALUES (@gangSociety, @gangLabel, 1);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES (@gangName, @gangLabel, 1);
INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(@gangName, 0, 'rookie', 'Associé', 0, '{}', '{}'),
	(@gangName, 1, 'member', 'Soldat', 0, '{}', '{}'),
	(@gangName, 2, 'elite', 'Elite', 0, '{}', '{}'),
	(@gangName, 3, 'lieutenant', 'Lieutenant', 0, '{}', '{}'),
	(@gangName, 4, 'viceboss', 'Bras Droit', 0, '{}', '{}'),
	(@gangName, 5, 'boss', 'Jefe', 0, '{}', '{}')
;
			]], {
				['@gangName'] = data.Name,
				['@gangLabel'] = data.Label,
				['@gangSociety'] = 'society_' .. data.Name
			}, function(rowsChanged)
				table.insert(GangsData, data)
				SaveResourceFile('GangsBuilder', 'data/gangData.json', json.encode(GangsData))
				xPlayer.showNotification('Gang créé ! (Disponible au prochain reboot)')
				sendToDiscord('Never Life - LOGS', '[Crée-GANGS] ' ..xPlayer.getName().. ' Vient de crée un GANG | NOM : ' ..data.Name.. '', 3145658)
			end)
		else
			xPlayer.showNotification('Le Job existe déjà sombre fdp')
		end
	end
end)

RegisterServerEvent('::{korioz#0110}::GangsBuilder:requestSync')
AddEventHandler('::{korioz#0110}::GangsBuilder:requestSync', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local plyGang = GetGang(xPlayer.job2)
	TriggerClientEvent('::{korioz#0110}::GangsBuilder:SyncGang', xPlayer.source, plyGang)
end)

AddEventHandler('::{korioz#0110}::esx:playerLoaded', function(source, xPlayer)
	local plyGang = GetGang(xPlayer.job2)
	TriggerClientEvent('::{korioz#0110}::GangsBuilder:SyncGang', source, plyGang)
end)

AddEventHandler('::{korioz#0110}::esx:setJob2', function(source, job2)
	local plyGang = GetGang(job2)
	TriggerClientEvent('::{korioz#0110}::GangsBuilder:SyncGang', source, plyGang)
end)

ESX.AddGroupCommand('gangsbuilder', 'superadmin', function(source)
	TriggerClientEvent('::{korioz#0110}::GangsBuilder:OpenMenu', source)
end, {help = ''})


function sendToDiscord (name,message,color)
	date_local1 = os.date('%H:%M:%S', os.time())
	local date_local = date_local1
	local DiscordWebHook = "https://discord.com/api/webhooks/792922527021269023/Qxq1SPEy55wBo15-Ktu0R63qjWiZk19YsPvXiIzey4e9nR5UffCDv6D-mkmDpvtOpBcG"
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