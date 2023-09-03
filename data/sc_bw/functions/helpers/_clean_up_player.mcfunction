#Cleans up @s after game
#Do not use

execute at @e[type=marker,tag=sc_bw_lobby_center] run tp @s ~ ~ ~
execute at @e[type=marker,tag=sc_bw_lobby_center] run tp @s ~ ~ ~

gamemode adventure @s
execute at @e[type=marker,tag=sc_bw_lobby_center] run clear @s[distance=..50]
effect clear @s
effect give @s saturation 3 10
effect give @s instant_health 1 10

tag @s remove sc_bw_spectator
tag @s remove sc_bw_red
tag @s remove sc_bw_blue
tag @s remove sc_bw_green
tag @s remove sc_bw_yellow
tag @s remove sc_bw_purple
tag @s remove sc_bw_pink
tag @s remove sc_bw_black
tag @s remove sc_bw_white
tag @s remove sc_bw_dead
tag @s remove sc_bw_player