# Map consists of 8 blocks
#
# XXXX
# XXXX
#
# And 2 upper flying structures
#
# Each normal cell is sized x=41, y=30, z=27

# set structures
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run place template sc_bw:standart_2/part_1
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~41 ~ ~ run place template sc_bw:standart_2/part_2
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~82 ~ ~ run place template sc_bw:standart_2/part_3
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~123 ~ ~ run place template sc_bw:standart_2/part_4

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~ ~ ~27 run place template sc_bw:standart_2/part_5
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~41 ~ ~27 run place template sc_bw:standart_2/part_6
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~82 ~ ~27 run place template sc_bw:standart_2/part_7
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~123 ~ ~27 run place template sc_bw:standart_2/part_8

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~15 ~42 ~22 run place template sc_bw:standart_2/flying_red
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run execute positioned ~139 ~42 ~22 run place template sc_bw:standart_2/flying_blue

# center marker
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~81 ~19 ~26 {Tags:["sc_bw_map_marker", "sc_bw_map_center", "sc_bw_map_center_standart_2"]}

#bottom marker - DEFINES HEIGHT AT WHICH PLAYERS DIE
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~81 ~ ~26 {Tags:["sc_bw_map_marker", "sc_bw_map_bottom"]}

# markers for beds
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~9 ~17 ~26 {Tags:["sc_bw_map_marker", "sc_bw_red_bed"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~153 ~17 ~26 {Tags:["sc_bw_map_marker", "sc_bw_blue_bed"]}

# markers for spawnpoints
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~16 ~16 ~26 {Tags:["sc_bw_map_marker", "sc_bw_red_spawnpoint"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~146 ~16 ~26 {Tags:["sc_bw_map_marker", "sc_bw_blue_spawnpoint"]}

# markers for generators
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~3 ~16 ~26 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~159 ~16 ~26 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~49 ~17 ~5 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~49 ~17 ~47 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~113 ~17 ~5 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~113 ~17 ~47 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~74 ~19 ~19 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~88 ~19 ~19 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~74 ~19 ~33 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~88 ~19 ~33 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}

# markers for shops
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~152 ~16 ~33 {Tags:["sc_bw_map_marker", "sc_bw_blue_left_trader"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~152 ~16 ~19 {Tags:["sc_bw_map_marker", "sc_bw_blue_right_trader"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~10 ~16 ~19 {Tags:["sc_bw_map_marker", "sc_bw_red_left_trader"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~50 ~ run summon minecraft:marker ~10 ~16 ~33 {Tags:["sc_bw_map_marker", "sc_bw_red_right_trader"]}