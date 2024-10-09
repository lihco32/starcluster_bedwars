scoreboard players set #IS_GAME_RUNNING sc_bw 1
scoreboard players set #IS_START_TIMER_RUNNING sc_bw 0

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

#reset players
scoreboard players set @a[tag=sc_bw_player] gameDeathBw 0
scoreboard players set @a[tag=sc_bw_player] sc_bw_has_left_alive_list 0
execute at @e[type=marker, tag=sc_bw_lobby_center] as @a[distance=..30, gamemode=!spectator, tag=sc_bw_player] run clear @s
effect clear @a[tag=sc_bw_player]
effect give @a[tag=sc_bw_player] minecraft:saturation 5 10
effect give @a[tag=sc_bw_player] instant_health 1 10
gamemode adventure @a[tag=sc_bw_player]

#give items
execute at @e[type=marker, tag=sc_bw_lobby_center] as @a[distance=..30, gamemode=!spectator, tag=sc_bw_player] run tag @s add sc_bw_need_items
schedule function sc_bw:helpers/_give_items 3t

#reset values of beds present
function sc_bw:helpers/_reset_bed_present
execute if score #TEAM_AMOUNT sc_bw matches 2..8 run scoreboard players set #RED sc_bw_bed_present 1
execute if score #TEAM_AMOUNT sc_bw matches 2..8 run scoreboard players set #BLUE sc_bw_bed_present 1
execute if score #TEAM_AMOUNT sc_bw matches 4..8 run scoreboard players set #GREEN sc_bw_bed_present 1
execute if score #TEAM_AMOUNT sc_bw matches 4..8 run scoreboard players set #YELLOW sc_bw_bed_present 1
execute if score #TEAM_AMOUNT sc_bw matches 8 run scoreboard players set #PURPLE sc_bw_bed_present 1
execute if score #TEAM_AMOUNT sc_bw matches 8 run scoreboard players set #PINK sc_bw_bed_present 1
execute if score #TEAM_AMOUNT sc_bw matches 8 run scoreboard players set #BLACK sc_bw_bed_present 1
execute if score #TEAM_AMOUNT sc_bw matches 8 run scoreboard players set #WHITE sc_bw_bed_present 1

#set map
execute if score #SELECTED_MAP sc_bw matches 1 run schedule function sc_bw:placers/place_map_standart_2 2t
execute if score #SELECTED_MAP sc_bw matches 2 run schedule function sc_bw:placers/place_map_standart_4 2t
execute if score #SELECTED_MAP sc_bw matches 3 run schedule function sc_bw:placers/place_map_sea_2 2t
execute if score #SELECTED_MAP sc_bw matches 4 run schedule function sc_bw:placers/place_map_sea_4 2t

#summon traders
schedule function sc_bw:helpers/_summon_traders 2s

#tp players and set spawnpoints
schedule function sc_bw:helpers/_initial_tp_players 42t

#Initialize variables like #RED_STILL_IN_GAME sc_bw
schedule function sc_bw:helpers/_init_player_counting 45t

#start cycles
schedule function sc_bw:game_cycle/_player_death_cycle 3s
schedule function sc_bw:game_cycle/_kill_players_fallen 3s
schedule function sc_bw:game_cycle/_update_beds_status 3s
schedule function sc_bw:game_cycle/_iron_gen_cycle 8s
schedule function sc_bw:game_cycle/_gold_gen_cycle 8s
schedule function sc_bw:game_cycle/_emerald_gen_cycle 8s

execute if score #TEAM_AMOUNT sc_bw matches 2 run schedule function sc_bw:game_cycle/_check_game_end_2_teams 4s
execute if score #TEAM_AMOUNT sc_bw matches 4 run schedule function sc_bw:game_cycle/_check_game_end_4_teams 4s
execute if score #TEAM_AMOUNT sc_bw matches 8 run schedule function sc_bw:game_cycle/_check_game_end_8_teams 4s


