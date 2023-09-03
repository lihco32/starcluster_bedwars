# increase timer for dead players
execute as @a[tag=sc_bw_dead] run scoreboard players add @s sc_bw_death_timer 1

# respawn players with enough time
execute as @a[tag=sc_bw_dead, scores={sc_bw_death_timer=140..}] run function sc_bw:helpers/_respawn_player

# handle new dead player
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run scoreboard players set @s sc_bw_death_timer 0
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run gamemode spectator @s
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run tag @s add sc_bw_dead
execute as @a[tag=sc_bw_player,scores={gameDeathBw=1..}] run scoreboard players set @s gameDeathBw 0


# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_player_death_cycle 1t