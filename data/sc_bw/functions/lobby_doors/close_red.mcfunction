execute as @e[type=marker, distance=..50,tag=sc_bw_lobby_red_team] at @s run fill ~2 ~-1 ~-2 ~-2 ~2 ~-2 minecraft:iron_block
execute as @e[type=marker, distance=..50,tag=sc_bw_lobby_red_team] at @s run setblock ~ ~-1 ~-4 minecraft:air
execute as @e[type=marker, distance=..50,tag=sc_bw_lobby_red_team] at @s run execute as @a[distance=..2.5] run tp @s @e[type=marker,tag=sc_bw_lobby_center, limit=1, sort=nearest]