fx_version('bodacious')
game('gta5')

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/fr.lua',
	'config.lua',
	'server/main.lua'
}

--client_script('@korioz/lib.lua')
client_scripts {
	'@es_extended/locale.lua',
	'@warmenu/warmenu.lua',
	'locales/fr.lua',
	'config.lua',
	'client/main.lua',
	'client/menu.lua'
}

dependencies({
	'es_extended',
	'esx_billing'
})