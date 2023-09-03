execute at @e[type=marker,tag=sc_bw_map_center] as @a[tag=sc_bw_dead, gamemode=spectator, distance=500..] run tp @s ~ ~ ~

# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_control_spectators_cycle 1s