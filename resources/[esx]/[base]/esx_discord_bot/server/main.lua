-- CONFIG WEBHOOK --
local serverstart = "" --Logs général
local chatserver = "" --Logs général
local playerconnecting = "" --Logs co
local playerdiconnect = "" --Logs co
local giveitem = "" --Logs Give
local giveargent = "https://discord.com/api/webhooks/798435914241015848/si6j8P2MTgoqDZ2dHKlL8zvw4SAeq1fzfzjzOmLcKq1F3R2ZjYRhc1EKS9X8mqP9XIN2" --Logs Give
local givearme = "" --Logs Give
local mettrecoffreentreprise = "https://discord.com/api/webhooks/798413704026521632/-FZSmI143uFSheHI6g07jSEurgZu4D2ZprVAdUWzdddvCOC8eKjYpN4DPSHfbKIhvPhV" --Logs Confisque
local retirecoffreentreprise = "https://discord.com/api/webhooks/798413538791129129/eOvc6YAPUend9tYx3acVBcjUM0-XjdMRxF0KDlHCYpriK8xmhk4JoOoBkH1Z1XFLlIQu" --Logs Confisque
local blanchireargent = "" --Logs Confisque
local confisquelog = "" --Logs Confisque
local anticheat = "" --Logs AC
-- CONFIG WEBHOOK --

TriggerEvent('::{korioz#0110}::esx:getSharedObject', function(obj) ESX = obj end)

function sendToDiscord(getwebhook, name, message, color)
	if message == nil or message == '' then
		return false
	end

	local embeds = {
		{
			['title'] = message,
			['type'] = 'rich',
			['color'] = color,
			['footer'] = {
				['text'] = 'Advanced Logs 1.2'
			}
		}
	}

	PerformHttpRequest(getwebhook, function() end, 'POST', json.encode({username = name, embeds = embeds}), {['Content-Type'] = 'application/json'})
end

sendToDiscord(serverstart, _U('server'), _U('server_start'), Config.green)

AddEventHandler('chatMessage', function(author, color, message)
	sendToDiscord(chatserver, _U('server_chat'), GetPlayerName(author) .. ' : '.. message, Config.grey)
end)

RegisterServerEvent('::{korioz#0110}::esx:playerLoaded')
AddEventHandler('::{korioz#0110}::esx:playerLoaded', function(source, xPlayer)
	local _source = source
	sendToDiscord(playerconnecting, _U('server_connecting'), "Joueur : " .. GetPlayerName(_source) .. " [" .. _source .. "] (" .. ESX.GetIdentifierFromId(_source) .. ") " .. _('user_connecting'), Config.grey)
end)

AddEventHandler('::{korioz#0110}::esx:playerDropped', function(source, xPlayer, reason)
	local _source = source
	sendToDiscord(playerdiconnect, _U('server_disconnecting'), "Joueur : " .. GetPlayerName(_source) .. " [" .. _source .. "] (" .. ESX.GetIdentifierFromId(_source) .. ") " .. _('user_disconnecting') .. '. (' .. reason .. ')', Config.grey)
end)

RegisterServerEvent('::{korioz#0110}::esx:giveitemalert')
AddEventHandler('::{korioz#0110}::esx:giveitemalert', function(name, nametarget, itemName, amount)
	sendToDiscord(giveitem, _U('server_item_transfer'), name .. ' ' .. _('user_gives_to') .. ' ' .. nametarget .. ' ' .. amount .. ' ' .. ESX.GetItem(itemName).label, Config.orange)
end)

RegisterServerEvent('::{korioz#0110}::esx:giveaccountalert')
AddEventHandler('::{korioz#0110}::esx:giveaccountalert', function(name, nametarget, accountName, amount)
	sendToDiscord(giveargent, _U('server_account_transfer', ESX.GetAccountLabel(accountName)), name .. ' ' .. _('user_gives_to') .. ' ' .. nametarget .. ' ' .. amount .. '$', Config.orange)
end)

RegisterServerEvent('::{korioz#0110}::esx:giveweaponalert')
AddEventHandler('::{korioz#0110}::esx:giveweaponalert', function(name, nametarget, weaponName)
	sendToDiscord(givearme, _U('server_weapon_transfer'), name .. ' ' .. _('user_gives_to') .. ' ' .. nametarget .. ' ' .. ESX.GetWeaponLabel(weaponName), Config.orange)
end)

RegisterServerEvent('::{korioz#0110}::esx:depositsocietymoney')
AddEventHandler('::{korioz#0110}::esx:depositsocietymoney', function(name, amount, societyName)
	sendToDiscord(mettrecoffreentreprise, 'Coffre Entreprise', name .. ' a déposé ' .. amount .. '$ dans le coffre de ' .. societyName, Config.orange)
end)

RegisterServerEvent('::{korioz#0110}::esx:withdrawsocietymoney')
AddEventHandler('::{korioz#0110}::esx:withdrawsocietymoney', function(name, amount, societyName)
	sendToDiscord(retirecoffreentreprise, 'Coffre Entreprise', name .. ' a retiré ' .. amount .. '$ dans le coffre de ' .. societyName, Config.orange)
end)

RegisterServerEvent('::{korioz#0110}::esx:washingmoneyalert')
AddEventHandler('::{korioz#0110}::esx:washingmoneyalert', function(name, amount)
	sendToDiscord(blanchireargent, _U('server_washingmoney'), name .. ' ' .. _('user_washingmoney') .. ' ' .. amount .. '$', Config.orange)
end)

RegisterServerEvent('::{korioz#0110}::esx:confiscateitem')
AddEventHandler('::{korioz#0110}::esx:confiscateitem', function(name, nametarget, itemname, amount, job)
	sendToDiscord(confisquelog, 'Confisquer Item', name .. ' a confisqué ' .. amount .. 'x ' .. itemname .. ' à ' .. nametarget .. ' JOB: ' .. job, Config.orange)
end)

RegisterServerEvent('::{korioz#0110}::esx:customDiscordLog')
AddEventHandler('::{korioz#0110}::esx:customDiscordLog', function(embedContent, botName, embedColor)
	sendToDiscord(anticheat, botName or 'Report AntiCheat', embedContent or 'Message Vide', embedColor or Config.red)
end)