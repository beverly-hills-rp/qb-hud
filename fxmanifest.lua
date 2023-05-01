fx_version "cerulean"
use_fxv2_oal "yes"
lua54 "yes"
games { "gta5" }

name "hud"
version "0.1.0"
description "GTA V Roleplay Hud"
author "Muloo"

shared_scripts {
    "src/shared/config.lua"
}

client_scripts {
    "src/client/main.lua"
}

server_scripts {
    "src/server/main.lua"
}

ui_page "nui/dist/index.html"

files {
    "nui/dist/index.html",
    "nui/dist/assets/*.js",
    "nui/dist/assets/*.png",
    "nui/dist/assets/*.css"
}
