# get Y positions
execute store result score #HEIGHT_TO_KILL_AT sc_bw run data get entity @e[type=marker, tag=sc_bw_map_bottom, limit=1] Pos[1]
execute as @a[tag=sc_bw_player,tag=!sc_bw_dead,gamemode=!spectator] run execute store result score @s sc_bw_Y_pos run data get entity @s Pos[1]

# kill fallen players
execute as @a[tag=sc_bw_player,tag=!sc_bw_dead,gamemode=!spectator] if score @s sc_bw_Y_pos <= #HEIGHT_TO_KILL_AT sc_bw run kill @s

# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_kill_players_fallen 5t