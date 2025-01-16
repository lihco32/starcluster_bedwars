# handle new dead player with a tag=sc_bw_handle_new_dead_player

execute as @a[tag=sc_bw_handle_new_dead_player] run scoreboard players set @s sc_bw_death_timer 0
execute as @a[tag=sc_bw_handle_new_dead_player] run tag @s add sc_bw_dead
execute as @a[tag=sc_bw_handle_new_dead_player] at @s run kill @e[type=item,distance=..2]
execute as @a[tag=sc_bw_handle_new_dead_player] run scoreboard players set @s gameDeathBw 0

execute as @a[tag=sc_bw_handle_new_dead_player] run tp @s @e[type=marker,tag=sc_bw_map_glass_dome, limit=1]
execute as @a[tag=sc_bw_handle_new_dead_player] at @e[type=marker,tag=sc_bw_map_glass_dome, limit=1] run spawnpoint @s ~ ~ ~

# update alive player count if necessary
#   check if player's bed is still present
scoreboard players set @a[tag=sc_bw_handle_new_dead_player] sc_bw_is_players_bed_present 0
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_red] if score #RED sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_blue] if score #BLUE sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_green] if score #GREEN sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_yellow] if score #YELLOW sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_purple] if score #PURPLE sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_pink] if score #PINK sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_black] if score #BLACK sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_white] if score #WHITE sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1

#   remove 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_red,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] run scoreboard players remove #RED_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_blue,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] run scoreboard players remove #BLUE_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_green,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] run scoreboard players remove #GREEN_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_yellow,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] run scoreboard players remove #YELLOW_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_purple,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] run scoreboard players remove #PURPLE_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_pink,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] run scoreboard players remove #PINK_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_black,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] run scoreboard players remove #BLACK_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_handle_new_dead_player, tag=sc_bw_white,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] run scoreboard players remove #WHITE_STILL_IN_GAME sc_bw 1

# set left_alive_list to true
scoreboard players set @a[tag=sc_bw_handle_new_dead_player,scores={sc_bw_is_players_bed_present=0,sc_bw_has_left_alive_list=0}] sc_bw_has_left_alive_list 1

# remove tag
tag @a[tag=sc_bw_handle_new_dead_player] remove sc_bw_handle_new_dead_player