-- Resource Metadata
fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'author'
description 'description'
version '0.0.1'

client_scripts {
    'config/config.lua',
    'client/main.lua'
}

server_scripts {
    'config/config.lua',
    'server/main.lua'
}

dependencies {
    'qb-core'
}