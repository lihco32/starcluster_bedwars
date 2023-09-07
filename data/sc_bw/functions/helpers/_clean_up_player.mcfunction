#Cleans up tag=sc_bw_to_clean_up after game
#Do not use

execute at @e[type=marker,tag=sc_bw_lobby_center] run tp @a[tag=sc_bw_to_clean_up] ~ ~ ~
execute at @e[type=marker,tag=sc_bw_lobby_center] run spawnpoint @a[tag=sc_bw_to_clean_up] ~ ~ ~

gamemode adventure @a[tag=sc_bw_to_clean_up]
execute at @e[type=marker,tag=sc_bw_lobby_center] run clear @a[distance=..70,tag=sc_bw_to_clean_up]
effect clear @a[tag=sc_bw_to_clean_up]
effect give @a[tag=sc_bw_to_clean_up] saturation 3 5
effect give @a[tag=sc_bw_to_clean_up] instant_health 1 5

tag @a[tag=sc_bw_to_clean_up] remove sc_bw_spectator

tag @a[tag=sc_bw_to_clean_up] remove sc_bw_red
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_blue
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_green
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_yellow
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_purple
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_pink
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_black
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_white

tag @a[tag=sc_bw_to_clean_up] remove sc_bw_dead
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_player
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_to_respawn
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_change_to_spectator
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_need_tp
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_need_items
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_need_spawnpoint
tag @a[tag=sc_bw_to_clean_up] remove sc_bw_to_clean_up
