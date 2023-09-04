#remove map
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~-82 ~-19 ~-27 ~-67 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~-67 ~-19 ~-27 ~-52 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~-52 ~-19 ~-27 ~-37 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~-37 ~-19 ~-27 ~-22 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~-22 ~-19 ~-27 ~-7 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~-7 ~-19 ~-27 ~8 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~8 ~-19 ~-27 ~23 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~23 ~-19 ~-27 ~38 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~38 ~-19 ~-27 ~53 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~53 ~-19 ~-27 ~68 ~11 ~28 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~68 ~-19 ~-27 ~83 ~11 ~28 minecraft:air

execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~-66 ~23 ~-4 ~-51 ~48 ~11 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run fill ~58 ~23 ~-4 ~73 ~48 ~11 minecraft:air

#kill villagers
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] run kill @e[type=villager,tag=sc_bw_trader,distance=..100]

#kill items

#kill markers
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_2] at @s run kill @e[type=marker,tag=sc_bw_map_marker,distance=..100]
