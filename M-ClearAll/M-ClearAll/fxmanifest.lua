fx_version 'cerulean'
game 'gta5'

author 'FuriousFoxGG Development'
description 'A Script to wipe certain entities from the map!'
version 'v1.0.0'

-------------------------------------
-------------- Shared ---------------
-------------------------------------

shared_scripts{
    ''
}

-------------------------------------
-------------- Client ---------------
-------------------------------------

client_scripts{
    'client.lua',
    'cl_entityer.lua'
}

-------------------------------------
-------------- Server ---------------
-------------------------------------

server_scripts{
    'config.lua', --Leave this as server as if somebody dumps your server your webhooks may get leaked resulting in webhook spam and discord rate limits.
    'server.lua'
}

-------------------
----- Exports -----
-------------------

exports{
    ''
}