--[[ Main ]]--
AddEventHandler('korioz:init', function()
	Citizen.CreateThread(function()
		while true do
			local Player = LocalPlayer()

			DisablePlayerVehicleRewards(Player.ID)
			SetPlayerHealthRechargeMultiplier(Player.ID, 0.0)
			SetRunSprintMultiplierForPlayer(Player.ID, 1.0)
			SetSwimMultiplierForPlayer(Player.ID, 1.0)

			if Player.IsDriver then
				SetPlayerCanDoDriveBy(Player.ID, false)
			else
				SetPlayerCanDoDriveBy(Player.ID, true)
			end

			if GetPlayerWantedLevel(Player.ID) ~= 0 then
				ClearPlayerWantedLevel(Player.ID)
			end

			Citizen.Wait(0)
		end
	end)

	Citizen.CreateThread(function()
		while true do
			local Player = LocalPlayer()

			AddTextEntry('FE_THDR_GTAO', ('[~r~FR~w~] ~y~NeverLife~w~ | ~b~%s~w~ [~b~%s~w~] | discord.gg/neverlife'):format(Player.Name, Player.ServerID))

            SetDiscordAppId(766960565800140800)
            SetDiscordRichPresenceAsset('logo')
            SetDiscordRichPresenceAssetSmall('mon_logo')
            SetDiscordRichPresenceAssetSmallText('')
            SetRichPresence(("%s [%s]"):format(Player.Name, Player.ServerID))

			Citizen.Wait(30000)
		end
	end)
end)