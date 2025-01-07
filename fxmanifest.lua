fx_version "adamant"
games {'rdr3'}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

author 'Munafio'
description 'RedM script for enabling map discoveries!'
version '1.0.1'

client_scripts {
    'c/data.lua',
    'c/main.c.lua',
}

server_scripts {
    'vcheck.lua',
}