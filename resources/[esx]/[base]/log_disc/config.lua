Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = true  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "NeverLife" 							-- Bot Username
Config.avatar = ""				-- Bot Avatar
Config.communtiyName = "NeverLife"					-- Icon top of the Embed
Config.communtiyLogo = ""		-- Icon top of the Embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.weaponLogDelay = 0		-- delay to wait after someone fired a weapon to check again in ms (put to 0 to disable) Best to keep this at atleast 1000

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs


-- Change color of the default embeds here
-- It used Decimal color codes witch you can get and convert here: https://jokedevil.com/colorPicker
Config.joinColor = "3447003" 		-- Player Connecting
Config.leaveColor = "15158332"		-- Player Disconnected
Config.chatColor = "10592673"		-- Chat Message
Config.shootingColor = "10373"		-- Shooting a weapon
Config.deathColor = "15158332"		-- Player Died
Config.resourceColor = "15461951"	-- Resource Stopped/Started



Config.webhooks = {
	all = "<DISCORD_WEBHOOK>",
	chat = "",
	joins = "",
	leaving = "",
	deaths = "",
	shooting = "",
	resources = "",
  }


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.1.0"



