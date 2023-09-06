#remove map
#   center
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~ ~ ~ ~30 ~27 ~30 minecraft:air
#   spawns
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~4 ~7 ~-67 ~25 ~25 ~-46 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~-67 ~7 ~4 ~-46 ~25 ~25 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~4 ~7 ~75 ~25 ~25 ~96 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~75 ~7 ~4 ~96 ~25 ~25 minecraft:air
#   flying
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~11 ~41 ~-51 ~19 ~66 ~-43 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~-51 ~41 ~11 ~-43 ~66 ~19 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~11 ~41 ~73 ~19 ~66 ~81 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~73 ~41 ~11 ~81 ~66 ~19 minecraft:air
#   gold islands
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~36 ~5 ~36 ~47 ~23 ~47 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~36 ~5 ~-18 ~47 ~23 ~-7 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~-16 ~5 ~-18 ~-7 ~23 ~-8 minecraft:air
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s positioned ~-15 ~-20 ~-15 run fill ~-16 ~5 ~36 ~-7 ~23 ~47 minecraft:air

#kill villagers
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] run kill @e[type=villager,tag=sc_bw_trader,distance=..100]

#kill items
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] run kill @e[type=minecraft:item,distance=..100]

#kill markers
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_standart_4] at @s run kill @e[type=marker,tag=sc_bw_map_marker,distance=..100]
