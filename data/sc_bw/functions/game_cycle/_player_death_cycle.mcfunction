# increase timer for dead players
execute as @a[tag=sc_bw_dead] run scoreboard players add @s sc_bw_death_timer 1


# respawn players with enough time=================================================================
execute as @a[tag=sc_bw_dead, scores={sc_bw_death_timer=180..}] run tag @s add sc_bw_to_respawn
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
function sc_bw:helpers/_give_items
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run tag @s add sc_bw_need_tp
function sc_bw:helpers/_tp_to_spawn
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run gamemode adventure @s
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=1}] run tag @s remove sc_bw_to_respawn
#   bed is absent
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=0}] run tag @s add sc_bw_change_to_spectator
function sc_bw:helpers/_change_tags_to_spectator
execute as @a[tag=sc_bw_to_respawn, scores={sc_bw_is_players_bed_present=0}] run tag @s remove sc_bw_to_respawn
# end respawn players with enough time=================================================================


# handle new dead player
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run scoreboard players set @s sc_bw_death_timer 0
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run gamemode spectator @s
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run tag @s add sc_bw_dead
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] at @s run kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["sc_bw_item"]}}},distance=..1]
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run scoreboard players set @s gameDeathBw 0


# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_player_death_cycle 1t