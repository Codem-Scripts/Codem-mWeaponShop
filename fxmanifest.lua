fx_version 'adamant'
game 'gta5'
Author 'ThaC'
description "CodeM mWeaponShop"
-- Brought to you by 5M EXCLUSIVE-SCRIPTS (discord.gg/fivemscripts)
shared_script{
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
}

client_scripts {
    'shared/config.lua',
    'client/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'shared/config.lua',
    'server/*.lua', 
} 

ui_page {
    'html/index.html',
}
files {
	'html/fonts/*.ttf',
    'html/fonts/*.otf',
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/images/*.png',
}

lua54 'yes'