# Respawn @s
# DO NOT USE THIS YOURSELF

tag @s remove sc_bw_dead
scoreboard players set @s sc_bw_death_timers 0

#check if player's bed is still present
scoreboard players set @s sc_bw_is_players_bed_present 0
execute as @s[tag=sc_bw_red] at @e[tag=sc_bw_red_bed,type=marker,limit=1,sort=nearest] if block ~ ~ ~ minecraft:red_bed run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @s[tag=sc_bw_blue] at @e[tag=sc_bw_blue_bed,type=marker,limit=1,sort=nearest] if block ~ ~ ~ minecraft:blue_bed run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @s[tag=sc_bw_green] at @e[tag=sc_bw_green_bed,type=marker,limit=1,sort=nearest] if block ~ ~ ~ minecraft:lime_bed run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @s[tag=sc_bw_yellow] at @e[tag=sc_bw_yellow_bed,type=marker,limit=1,sort=nearest] if block ~ ~ ~ minecraft:yellow_bed run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @s[tag=sc_bw_purple] at @e[tag=sc_bw_purple_bed,type=marker,limit=1,sort=nearest] if block ~ ~ ~ minecraft:purple_bed run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @s[tag=sc_bw_pink] at @e[tag=sc_bw_pink_bed,type=marker,limit=1,sort=nearest] if block ~ ~ ~ minecraft:pink_bed run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @s[tag=sc_bw_black] at @e[tag=sc_bw_black_bed,type=marker,limit=1,sort=nearest] if block ~ ~ ~ minecraft:black_bed run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @s[tag=sc_bw_white] at @e[tag=sc_bw_white_bed,type=marker,limit=1,sort=nearest] if block ~ ~ ~ minecraft:white_bed run scoreboard players set @s sc_bw_is_players_bed_present 1

# branching
execute if score @s sc_bw_is_players_bed_present matches 1 as @s run function sc_bw:helpers/_respawn_bed_present
execute if score @s sc_bw_is_players_bed_present matches 0 as @s run function sc_bw:helpers/_respawn_bed_absent
