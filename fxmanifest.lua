fx_version 'cerulean'

game 'gta5'

author 'Nox'

lua54 'yes'

shared_script {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'config.lua',
}

client_script {
    'client/*.lua',
    'config.lua',
}


server_script {
    'server/*.lua'
}