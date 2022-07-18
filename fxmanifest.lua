fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game 'rdr3'
author 'VORP @YourgenAP'
lua54 'yes'
description 'Medical VORP script'
client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',

}

shared_scripts {
    'config.lua',
    'locale.lua',
    'languages/*.lua'
}
--------------------------------------------------------------------------------------

---------------- Dependencies -------------------------------------------------------
---- What other scripts (if any) does your script depend on. REMOVE THIS IF NONE ----
dependencies {
    'vorp_core',
    'vorp_inventory',
    'vorp_crafting',
    'menuapi'
}

--dont touch
--version '1.3'
--vorp_checker 'yes'
--vorp_name '^4Resource version Check^3'
--vorp_github 'https://github.com/VORPCORE/vorp_medics'
