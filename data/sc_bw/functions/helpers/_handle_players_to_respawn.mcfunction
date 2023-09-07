#handles respawn of players with tag=sc_bw_to_respawn

tag @a[tag=sc_bw_to_respawn] remove sc_bw_dead
scoreboard players set @a[tag=sc_bw_to_respawn] sc_bw_death_timers 0

#   check if player's bed is still present
scoreboard players set @a[tag=sc_bw_to_respawn] sc_bw_is_players_bed_present 0
execute as @a[tag=sc_bw_to_respawn, tag=sc_bw_red] if score #RED sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_to_respawn, tag=sc_bw_blue] if score #BLUE sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_to_respawn, tag=sc_bw_green] if score #GREEN sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_to_respawn, tag=sc_bw_yellow] if score #YELLOW sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_to_respawn, tag=sc_bw_purple] if score #PURPLE sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_to_respawn, tag=sc_bw_pink] if score #PINK sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_to_respawn, tag=sc_bw_black] if score #BLACK sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1
execute as @a[tag=sc_bw_to_respawn, tag=sc_bw_white] if score #WHITE sc_bw_bed_present matches 1 run scoreboard players set @s sc_bw_is_players_bed_present 1

#   branching
#   bed is still present
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run tag @s add sc_bw_need_items
execute if entity @a[tag=sc_bw_need_items] run function sc_bw:helpers/_give_items
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run tag @s add sc_bw_need_tp
execute if entity @a[tag=sc_bw_need_tp] run function sc_bw:helpers/_tp_to_spawn
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run tag @s add sc_bw_need_spawnpoint
execute if entity @a[tag=sc_bw_need_spawnpoint] run function sc_bw:helpers/_spawnpoint_to_spawn
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run effect give @s instant_health 1 10
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run effect give @s saturation 1 5
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run tag @s remove sc_bw_to_respawn
#   bed is absent
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=0}] run tag @s add sc_bw_remove_from_alive_list
execute if entity @a[tag=sc_bw_remove_from_alive_list] run function sc_bw:helpers/_remove_from_alive_list
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=0}] run tag @s add sc_bw_change_to_spectator
execute if entity @a[tag=sc_bw_change_to_spectator] run function sc_bw:helpers/_change_tags_to_spectator
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=0}] run tag @s remove sc_bw_to_respawn

tag @a[tag=sc_bw_to_respawn] remove sc_bw_to_respawn
