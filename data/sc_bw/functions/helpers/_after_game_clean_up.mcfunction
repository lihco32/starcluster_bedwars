scoreboard players set #IS_GAME_RUNNING sc_bw 0

execute as @a[tag=sc_bw_player] run function sc_bw:helpers/_clean_up_player
execute as @a[tag=sc_bw_spectator] run function sc_bw:helpers/_clean_up_player

execute as @e[type=marker,tag=sc_bw_map_center] at @s run schedule function sc_bw:placers/_remove_current_map 10t

