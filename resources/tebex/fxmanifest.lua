fx_version 'cerulean'
games { 'gta5' }

author 'Koaio'

client_scripts {
    "internal/RageUI/RMenu.lua",
    "internal/RageUI/menu/RageUI.lua",
    "internal/RageUI/menu/Menu.lua",
    "internal/RageUI/menu/MenuController.lua",

    "internal/RageUI/components/*.lua",

    "internal/RageUI/menu/elements/*.lua",

    "internal/RageUI/menu/items/*.lua",

    "internal/RageUI/menu/panels/*.lua",

    "internal/RageUI/menu/windows/*.lua",
    'client/CMain.lua',
    'client/CCase.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',

    'internal/LiteMySQL.lua',
    'server/SMain.lua',
    'server/EventProtector.lua',
}
