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
#   sword
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_player] container.0 with minecraft:wooden_sword{Tags:["sc_bw_item"]} 1

#   armor
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_red] armor.head with leather_helmet{Tags:["sc_bw_item"],display:{color:11546150}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_red] armor.chest with leather_chestplate{Tags:["sc_bw_item"],display:{color:11546150}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_red] armor.legs with leather_leggings{Tags:["sc_bw_item"],display:{color:11546150}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_red] armor.feet with leather_boots{Tags:["sc_bw_item"],display:{color:11546150}} 1

execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_blue] armor.head with leather_helmet{Tags:["sc_bw_item"],display:{color:3949738}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_blue] armor.chest with leather_chestplate{Tags:["sc_bw_item"],display:{color:3949738}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_blue] armor.legs with leather_leggings{Tags:["sc_bw_item"],display:{color:3949738}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_blue] armor.feet with leather_boots{Tags:["sc_bw_item"],display:{color:3949738}} 1

execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_green] armor.head with leather_helmet{Tags:["sc_bw_item"],display:{color:8439583}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_green] armor.chest with leather_chestplate{Tags:["sc_bw_item"],display:{color:8439583}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_green] armor.legs with leather_leggings{Tags:["sc_bw_item"],display:{color:8439583}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_green] armor.feet with leather_boots{Tags:["sc_bw_item"],display:{color:8439583}} 1

execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_yellow] armor.head with leather_helmet{Tags:["sc_bw_item"],display:{color:16701501}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_yellow] armor.chest with leather_chestplate{Tags:["sc_bw_item"],display:{color:16701501}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_yellow] armor.legs with leather_leggings{Tags:["sc_bw_item"],display:{color:16701501}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_yellow] armor.feet with leather_boots{Tags:["sc_bw_item"],display:{color:16701501}} 1

execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_pink] armor.head with leather_helmet{Tags:["sc_bw_item"],display:{color:15961002}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_pink] armor.chest with leather_chestplate{Tags:["sc_bw_item"],display:{color:15961002}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_pink] armor.legs with leather_leggings{Tags:["sc_bw_item"],display:{color:15961002}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_pink] armor.feet with leather_boots{Tags:["sc_bw_item"],display:{color:15961002}} 1

execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_purple] armor.head with leather_helmet{Tags:["sc_bw_item"],display:{color:8991416}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_purple] armor.chest with leather_chestplate{Tags:["sc_bw_item"],display:{color:8991416}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_purple] armor.legs with leather_leggings{Tags:["sc_bw_item"],display:{color:8991416}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_purple] armor.feet with leather_boots{Tags:["sc_bw_item"],display:{color:8991416}} 1

execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_black] armor.head with leather_helmet{Tags:["sc_bw_item"],display:{color:1908001}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_black] armor.chest with leather_chestplate{Tags:["sc_bw_item"],display:{color:1908001}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_black] armor.legs with leather_leggings{Tags:["sc_bw_item"],display:{color:1908001}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_black] armor.feet with leather_boots{Tags:["sc_bw_item"],display:{color:1908001}} 1

execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_white] armor.head with leather_helmet{Tags:["sc_bw_item"],display:{color:16383998}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_white] armor.chest with leather_chestplate{Tags:["sc_bw_item"],display:{color:16383998}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_white] armor.legs with leather_leggings{Tags:["sc_bw_item"],display:{color:16383998}} 1
execute at @e[type=marker, tag=sc_bw_lobby_center] run item replace entity @a[distance=..30, gamemode=!spectator, tag=sc_bw_white] armor.feet with leather_boots{Tags:["sc_bw_item"],display:{color:16383998}} 1

#set map

#tp players

#start cycles