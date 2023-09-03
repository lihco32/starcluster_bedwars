# Map consists of 8 blocks
#
# XXXX
# XXXX
#
# And 2 upper flying structures
#
# Each normal cell is sized x=41, y=30, z=27

# set structures
place template sc_bw:standart_2/part_1
execute positioned ~41 ~ ~ run place template sc_bw:standart_2/part_2
execute positioned ~82 ~ ~ run place template sc_bw:standart_2/part_3
execute positioned ~123 ~ ~ run place template sc_bw:standart_2/part_4

execute positioned ~ ~ ~27 run place template sc_bw:standart_2/part_5
execute positioned ~41 ~ ~27 run place template sc_bw:standart_2/part_6
execute positioned ~82 ~ ~27 run place template sc_bw:standart_2/part_7
execute positioned ~123 ~ ~27 run place template sc_bw:standart_2/part_8

execute positioned ~15 ~42 ~22 run place template sc_bw:standart_2/flying_red
execute positioned ~139 ~42 ~22 run place template sc_bw:standart_2/flying_blue

# center marker
summon minecraft:marker ~82 ~17 ~27 {Tags:["sc_bw_map_marker", "sc_bw_map_center", "sc_bw_map_center_standart_2"]}

# markers for beds
summon minecraft:marker ~10 ~17 ~27 {Tags:["sc_bw_map_marker", "sc_bw_red_bed"]}
summon minecraft:marker ~154 ~17 ~27 {Tags:["sc_bw_map_marker", "sc_bw_blue_bed"]}

# markers for spawnpoints
summon minecraft:marker ~4 ~16 ~27 {Tags:["sc_bw_map_marker", "sc_bw_red_spawnpoint"]}
summon minecraft:marker ~160 ~16 ~27 {Tags:["sc_bw_map_marker", "sc_bw_blue_spawnpoint"]}

# markers for generators
summon minecraft:marker ~4 ~16 ~27 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}
summon minecraft:marker ~160 ~16 ~27 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}

summon minecraft:marker ~50 ~17 ~6 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
summon minecraft:marker ~50 ~17 ~48 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
summon minecraft:marker ~114 ~17 ~6 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
summon minecraft:marker ~114 ~17 ~48 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}

summon minecraft:marker ~75 ~19 ~20 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
summon minecraft:marker ~89 ~19 ~20 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
summon minecraft:marker ~75 ~19 ~34 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
summon minecraft:marker ~89 ~19 ~34 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}

# markers for shops
summon minecraft:marker ~153 ~16 ~34 {Tags:["sc_bw_map_marker", "sc_bw_blue_left_trader"]}
summon minecraft:marker ~153 ~16 ~20 {Tags:["sc_bw_map_marker", "sc_bw_blue_right_trader"]}

summon minecraft:marker ~11 ~16 ~20 {Tags:["sc_bw_map_marker", "sc_bw_red_left_trader"]}
summon minecraft:marker ~11 ~16 ~34 {Tags:["sc_bw_map_marker", "sc_bw_red_right_trader"]}