#count amount of teams with 1 or more player
scoreboard players set #START_BLUE_TEAM_AMOUNT sc_bw 0
scoreboard players set #START_RED_TEAM_AMOUNT sc_bw 0
scoreboard players set #START_GREEN_TEAM_AMOUNT sc_bw 0
scoreboard players set #START_YELLOW_TEAM_AMOUNT sc_bw 0
scoreboard players set #START_PINK_TEAM_AMOUNT sc_bw 0
scoreboard players set #START_PURPLE_TEAM_AMOUNT sc_bw 0
scoreboard players set #START_BLACK_TEAM_AMOUNT sc_bw 0
scoreboard players set #START_WHITE_TEAM_AMOUNT sc_bw 0

execute at @e[type=marker, tag=sc_bw_lobby_blue_team] as @a[distance=..3, gamemode=!spectator] run scoreboard players add #START_BLUE_TEAM_AMOUNT sc_bw 1
execute at @e[type=marker, tag=sc_bw_lobby_red_team] as @a[distance=..3, gamemode=!spectator] run scoreboard players add #START_RED_TEAM_AMOUNT sc_bw 1
execute at @e[type=marker, tag=sc_bw_lobby_green_team] as @a[distance=..3, gamemode=!spectator] run scoreboard players add #START_GREEN_TEAM_AMOUNT sc_bw 1
execute at @e[type=marker, tag=sc_bw_lobby_yellow_team] as @a[distance=..3, gamemode=!spectator] run scoreboard players add #START_YELLOW_TEAM_AMOUNT sc_bw 1
execute at @e[type=marker, tag=sc_bw_lobby_pink_team] as @a[distance=..3, gamemode=!spectator] run scoreboard players add #START_PINK_TEAM_AMOUNT sc_bw 1
execute at @e[type=marker, tag=sc_bw_lobby_purple_team] as @a[distance=..3, gamemode=!spectator] run scoreboard players add #START_PURPLE_TEAM_AMOUNT sc_bw 1
execute at @e[type=marker, tag=sc_bw_lobby_black_team] as @a[distance=..3, gamemode=!spectator] run scoreboard players add #START_BLACK_TEAM_AMOUNT sc_bw 1
execute at @e[type=marker, tag=sc_bw_lobby_white_team] as @a[distance=..3, gamemode=!spectator] run scoreboard players add #START_WHITE_TEAM_AMOUNT sc_bw 1

scoreboard players set #AMOUNT_OF_TEAMS_READY sc_bw 0

execute if score #START_BLUE_TEAM_AMOUNT sc_bw matches 1.. run scoreboard players add #AMOUNT_OF_TEAMS_READY sc_bw 1
execute if score #START_RED_TEAM_AMOUNT sc_bw matches 1.. run scoreboard players add #AMOUNT_OF_TEAMS_READY sc_bw 1
execute if score #START_YELLOW_TEAM_AMOUNT sc_bw matches 1.. run scoreboard players add #AMOUNT_OF_TEAMS_READY sc_bw 1
execute if score #START_GREEN_TEAM_AMOUNT sc_bw matches 1.. run scoreboard players add #AMOUNT_OF_TEAMS_READY sc_bw 1
execute if score #START_PINK_TEAM_AMOUNT sc_bw matches 1.. run scoreboard players add #AMOUNT_OF_TEAMS_READY sc_bw 1
execute if score #START_PURPLE_TEAM_AMOUNT sc_bw matches 1.. run scoreboard players add #AMOUNT_OF_TEAMS_READY sc_bw 1
execute if score #START_BLACK_TEAM_AMOUNT sc_bw matches 1.. run scoreboard players add #AMOUNT_OF_TEAMS_READY sc_bw 1
execute if score #START_WHITE_TEAM_AMOUNT sc_bw matches 1.. run scoreboard players add #AMOUNT_OF_TEAMS_READY sc_bw 1

# Message if not enough teams
execute unless score #AMOUNT_OF_TEAMS_READY sc_bw matches 2.. run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text": "=================", "color":"white"}
execute unless score #AMOUNT_OF_TEAMS_READY sc_bw matches 2.. run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Недостатньо команд", "color":"white"}]
execute unless score #AMOUNT_OF_TEAMS_READY sc_bw matches 2.. run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text": "=================", "color":"white"}


execute if score #AMOUNT_OF_TEAMS_READY sc_bw matches 2.. run function sc_bw:start_game/_prepare_for_game_start