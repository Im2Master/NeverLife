MyricaS = {}

MyricaS.ConfigVersion = "Myrica1S"

-- READ THIS BEFORE STARTING INSTALLING THE ANTICHEAT
    --[[Hello, Make sure you configure the anticheat before starting your server, a bad configuration can ban randomly legit users... make sure you select everything you need, and put on false what you DON'T need]]
    --[[There is a new feature now called AntiInjectionBV, It's under testing, but it allow us to block Lua Executors Injections, This is a beta, but you can still try it out]]

--//ChocoHax Myrica O23A20//--
MyricaS.GeneralDiscordWebhookLink = "https://discord.com/api/webhooks/799044420464672808/OBMU5XKZ9a_ag7emWaYQN7mcGp3w8ah5ppIX_g74b-brecczrVmd8GZR5Nk9EYuGC3Nh" -- General logging system (Here you will find ALL logs) -- Required.

MyricaS.EntitiesDiscordWebhookLink = "https://discord.com/api/webhooks/797796290074771456/bbiUVxKShZTa2xJEG1XDmdZovWP_9rWNSxM_JEJPe0m1omlA6LR6zGrUy2-9ny0oXeIS"  -- Optional , Logging Entities only webhook
MyricaS.WeaponsDiscordWebhookLink = "https://discord.com/api/webhooks/799044073822486569/WDACzEHiMPnQkQVTYFJRi6uqsBJNEZK6vH6B96Tbe4W6EZUE9aBco6ficA1XoYEYPEcG"  -- Optional , Logging Weapons detection only webhook
MyricaS.BlacklistedEventsWebhookLink = "https://discord.com/api/webhooks/797795414065414194/984bOd6cslWCAs0TG5quW_qOf0vv1EUAs1sfLzi3PAXLGucDG40tCPe_E2nu2ft0NSka" -- Optional , Logging Blacklisted Events detection only webhook
MyricaS.ExplosionsDiscordWebhookLink = "https://discord.com/api/webhooks/797795559053459466/CuDCS446y5KWWV_3BSrhUTRnKNuaGkGjLvEVhbsCVKvCyT8s-CMGpiL-LQvwckogTr-F" -- Optional , Logging Explosions only webhook
MyricaS.SeclyDiscordWebhookLink = "https://discord.com/api/webhooks/797795729309564948/Zrr_9ICRHgZJjjh60HNlr3RcfxEWYoN0OB5T_ZwtCrECeKR4mxWAMHpo9pv7MBrs2QzR" -- Optional , Logging Secly only webhook (Modmenu Injections,Lua manipulation)

--//Log System//--
MyricaS.ConsoleLog = true -- This will log on console warnings/kicks/bans/infos
MyricaS.DiscordLog = true -- This will log on discord webhook warnings/kicks/bans/infos
MyricaS.ChatLog = true -- This will log on ingame chat FOR ALL PLAYERS warnings/kicks/bans

--//Chat Control Stuff//--
MyricaS.BlacklistedWordsDetection = true -- Detects and log the player that tried to say something blacklisted (configs/blacklistedwords.lua)
MyricaS.BlacklistedWordsKick = true -- Kick the player that tried to say a blacklisted word (require BlacklistedWordsDetection = true)
MyricaS.BlacklistedWordsBan = true -- Ban the player that tried to say a blacklisted word (require BlacklistedWordsDetection = true)

--//Default Stuff//--
MyricaS.TriggerDetection = true -- Kick the player that tried to execute or call a blacklisted trigger (remember to edit or obfuscate your original triggers), this will find all newbie cheaters/skids

--//Ban System//--
MyricaS.ForceDiscord = false -- This will force the users to have discord linked to discord (Most of the cheaters will not use Discord on FiveM)
    MyricaS.ForceDiscordMessage = "Discord is required to join that server" -- Force Discord Kick Message (If the player doesn't have Discord Linked, will get kicked with that message)
    
MyricaS.BlacklistedName = false
    MyricaS.UnauthorizedNameKickMessage = "Your name is blacklisted on this server"
    MyricaS.unauthNames = {
    "administrator", "admin", "adm1n", "adm!n", "admln", "moderator", "owner", "nigger", "n1gger", "moderator", "eulencheats", "lynxmenu", "atgmenu", "hacker", "bastard", "hamhaxia", "333gang", "ukrp", "eguk", "n1gger", "n1ga", "nigga", "n1gga", "nigg3r",
    "nig3r", "shagged", "4dm1n", "4dmin", "m0d3r4t0r", "n199er", "n1993r", "rustchance.com", "rustchance", "hellcase.com", "hellcase", "youtube.com", "youtu.be", "youtube", "twitch.tv", "twitch", "anticheat.gg", "anticheat", "fucking", "ψ", "@", "&", "{", "}", ";", "ϟ", "♕", "Æ", "Œ", "‰", "™", "š", "œ", "Ÿ", "µ", "ß",
    "±", "¦", "»", "«", "¼", "½", "¾", "¬", "¿", "Ñ", "®", "©", "²", "·", "•", "°", "þ", "ベ", "ル", "ろ", "ぬ", "ふ", "う", "え", "お", "や", "ゆ", "よ", "わ", "ほ", "へ", "た", "て", "い", "す", "か", "ん", "な", "に", "ら", "ぜ", "む",
    "ち", "と", "し", "は", "き", "く", "ま", "の", "り", "れ", "け", "む", "つ", "さ", "そ", "ひ", "こ", "み", "も", "ね", "る", "め", "ロ", "ヌ", "フ", "ア", "ウ", "エ", "オ", "ヤ", "ユ", "ヨ", "ワ", "ホ", "ヘ", "タ", "テ", "イ", "ス", "カ", "ン",
    "ナ", "ニ", "ラ", "セ", "ム", "チ", "ト", "シ", "ハ", "キ", "ク", "マ", "ノ", "リ", "レ", "ケ", "ム", "ツ", "サ", "ソ", "ヒ", "コ", "ミ", "モ", "ネ", "ル", "メ", "✪", "Ä", "ƒ", "Ã", "¢", "?", "†", "€", "웃", "и", "】", "【", "j4p.pl", "ֆ", "ȶ",
    "你", "好", "爱", "幸", "福", "猫", "狗", "微", "笑", "中", "安", "東", "尼", "杰", "诶", "西", "开", "陈", "瑞", "华", "馬", "塞", "洛", "ダ", "仇", "觉", "感", "衣", "德", "曼", "L͙", "a͙", "l͙", "ľ̶̚͝", "Ḩ̷̤͚̤͑͂̎̎͆", "a̸̢͉̠͎͒͌͐̑̇", "♚", "я", "Ʒ", "Ӂ̴", "Ƹ̴", "≋",
    "chocohax", "civilgamers.com", "civilgamers", "csgoempire.com", "csgoempire", "g4skins.com", "g4skins", "gameodds.gg", "duckfuck.com", "crysishosting.com", "crysishosting", "key-drop.com", "key-drop.pl", "skinhub.com", "skinhub", "`", "¤", "¡",
    "casedrop.eu", "casedrop", "cs.money", "rustypot.com", "ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â", "✈", "⛧", "☭", "☣", "✠", "dkb.xss.ht", "( . )( . )", "⚆", "╮", "╭", "rampage.lt", "?", "xcasecsgo.com", "xcasecsgo", "csgocases.com",
    "csgocases", "K9GrillzUK.co.uk", "moat.gg", "princevidz.com", "princevidz", "pvpro.com", "Pvpro", "ez.krimes.ro", "loot.farm", "arma3fisherslife.net", "arma3fisherslife", "egamers.io", "ifn.gg", "key-drop", "sups.gg", "tradeit.gg",
    "§", "csgotraders.net", "csgotraders", "Σ", "Ξ", "hurtfun.com", "hurtfun", "gamekit.com", "¥", "t.tv", "yandex.ru", "yandex", "csgofly.com", "csgofly", "pornhub.com", "pornhub", "一", "", "Ｊ", "◢", "◤", "⋡", "℟", "ᴮ", "ᴼ", "ᴛᴇᴀᴍ",
    "cs.deals","twat", "STRESS.PW",
    }


MyricaS.BanSystem = true -- This on false will disable the ChocoHax's Ban System
    MyricaS.KickMessage = "Le cheat n'est pas autorisé ! Rendez-vous sur discord : discord.gg/neverlife ." -- You can edit this UwU

--//Anti Blacklisted System (tables are in tables folder)//--
MyricaS.DetectExplosions = true -- Automatically detect blacklisted explosions from (tables/blacklistedexplosions.lua)
MyricaS.AntiExplosionNuke = true -- Automatically detects if there is an explosion nuke incoming on the server
    MyricaS.AntiExplosionNukeWarning = 7 -- Default is 7 (After how many explosions the player will be warned)
    MyricaS.AntiExplosionNukeBan = 15 -- Defualt is 15 (After how many explosions the player will be kicked out and banned)

--//Clear Ped Tasks Immediately Detection//-- 
MyricaS.ClearPedTasksImmediatelyDetection = true -- Automatically detect ClearPedTasksImmediately (detect cheaters that are kicking out of vehicles other players) NEW!
MyricaS.ClearPedTasksImmediatelyKick = true
MyricaS.ClearPedTasksImmediatelyBan = true

--//BlacklistedEntity Detection//-- 
MyricaS.BlacklistedEntityDetection = true -- MasterSwitch for Entity/Peds/Vehicles detection
    MyricaS.AntiNuke = true -- Automatically detects if there is an vehicles nuke incoming on the server
    MyricaS.NONPC = false -- Enable this only if you're running a NO-NPC server
    MyricaS.BlacklistedPedDetection = true -- Detects and Delete any blacklisted PED
    MyricaS.BlacklistedVehicleDetection = true -- Detects and Delete any blacklisted Vehicle
    MyricaS.BlacklistedObjectDetection = true -- MasterSwitch for Blacklisted/Whitelisted Objects
        MyricaS.ObjectDetection = 1 -- "1" Blacklisted Entity Detection , "2" Whitelisted Entity Detection

        -- Blacklisted Entity Detection will detect only blacklisted objects that tried to spawn on your server
        -- Whitelisted Entity Detection will detect ANY OBJECT except for the whitelisted ones (If you understand how that works, is the perfect weapon against cheaters)


--//BlacklistedWeapons Detection//-- 
MyricaS.BlacklistedWeaponGiveDetection = true -- Automatically detects cheaters trying to give blacklisted weapons to other players
MyricaS.BlacklistedWeaponUseDetection = true -- Automatically detects players trying to use blacklisted weapons
MyricaS.BlacklistedWeaponRemoveDetection = true -- Automatically detects cheaters trying to remove weapons from other players
MyricaS.MaxWeaponAmmo = 30 -- Automatically detect if someone tries to give themself/someone else more than 100 ammos NEW!

--//WebPanel//--
MyricaS.WebPanelEnabled = true -- Disable or enable panel


--//Permission System//-- DO NOT TOUCH IF YOU DON'T KNOW WHAT ARE U DOING 
MyricaS.Bypass = {"chocohaxadministrator","chocohaxmoderator"} -- This will allow the user with these perms to bypass Violation detections such as mod menus/weapons/godmode, etc.
MyricaS.AdminMenu = {"chocohaxadministrator"} -- This will allow the user with these perms to load the ChocoMenu.
MyricaS.Spectate = {"chocohaxadministrator","chocohaxmoderator"} -- This will allow the user with these perms to spectate other users.
MyricaS.Blips = {"chocohaxadministrator","chocohaxmoderator","chocohaxjobs"} -- This will allow the user with these perms to use Player Blips.
