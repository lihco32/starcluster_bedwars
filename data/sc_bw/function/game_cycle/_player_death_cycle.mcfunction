# increase timer for dead players
execute as @a[tag=sc_bw_dead] run scoreboard players add @s sc_bw_death_timer 1

# respawn players with enough time=================================================================
execute as @a[tag=sc_bw_dead, scores={sc_bw_death_timer=180..}] run tag @s add sc_bw_to_respawn
execute if entity @a[tag=sc_bw_to_respawn] run function sc_bw:helpers/_handle_players_to_respawn

# handle new dead player
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run tag @s add sc_bw_handle_new_dead_player
execute if entity @a[tag=sc_bw_handle_new_dead_player] run function sc_bw:helpers/_handle_new_dead_player

# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_player_death_cycle 1t