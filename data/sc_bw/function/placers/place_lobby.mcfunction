execute align xyz positioned ~.5 ~.5 ~.5 run place template sc_bw:lobby ~ ~ ~

execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~19 ~4 ~19 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_center"]}

execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~13 ~4 ~5 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_green_team"]}
execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~5 ~4 ~13 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_pink_team"]}

execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~25 ~4 ~5 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_yellow_team"]}
execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~5 ~4 ~25 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_purple_team"]}

execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~33 ~4 ~13 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_black_team"]}
execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~33 ~4 ~25 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_white_team"]}

execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~13 ~4 ~33 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_red_team"]}
execute align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:marker ~25 ~4 ~33 {Tags:["sc_bw_lobby_marker", "sc_bw_lobby_blue_team"]}
