scoreboard players set #IS_GAME_RUNNING sc_bw 1

#give tags
execute at @e[type=marker, tag=sc_bw_lobby_red_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_player
execute at @e[type=marker, tag=sc_bw_lobby_red_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_red

execute at @e[type=marker, tag=sc_bw_lobby_blue_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_player
execute at @e[type=marker, tag=sc_bw_lobby_blue_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_blue

execute at @e[type=marker, tag=sc_bw_lobby_green_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_player
execute at @e[type=marker, tag=sc_bw_lobby_green_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_green

execute at @e[type=marker, tag=sc_bw_lobby_yellow_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_player
execute at @e[type=marker, tag=sc_bw_lobby_yellow_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_yellow

execute at @e[type=marker, tag=sc_bw_lobby_pink_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_player
execute at @e[type=marker, tag=sc_bw_lobby_pink_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_pink

execute at @e[type=marker, tag=sc_bw_lobby_purple_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_player
execute at @e[type=marker, tag=sc_bw_lobby_purple_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_purple

execute at @e[type=marker, tag=sc_bw_lobby_black_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_player
execute at @e[type=marker, tag=sc_bw_lobby_black_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_black

execute at @e[type=marker, tag=sc_bw_lobby_white_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_player
execute at @e[type=marker, tag=sc_bw_lobby_white_team] run tag @a[distance=..2.5, gamemode=!spectator] add sc_bw_white

#reset death scores
scoreboard players set @a[tag=sc_bw_player] gameDeathBw 0

#clear items
execute at @e[type=marker, tag=sc_bw_lobby_center] as @a[distance=..30, gamemode=!spectator, tag=sc_bw_player] run clear @s

#give items
execute at @e[type=marker, tag=sc_bw_lobby_center] as @a[distance=..30, gamemode=!spectator, tag=sc_bw_player] run schedule function sc_bw:helpers/_give_items 3t

#set map

#summon traders
schedule function sc_bw:helpers/_summon_traders 5t

#tp players

#start cycles