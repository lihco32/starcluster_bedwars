# Map consists of 8 blocks
#
# XXXX
# XXXX
#
# And 2 upper flying structures
#
# Each normal cell is sized x=41, y=30, z=27

# set structures
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/center_island
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/spawn_yellow ~4 ~7 ~-67
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/spawn_red ~-67 ~7 ~4
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/spawn_green ~4 ~7 ~75
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/spawn_blue ~75 ~7 ~4

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/flying_yellow ~11 ~41 ~-51
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/flying_red ~-51 ~41 ~11
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/flying_green ~11 ~41 ~73
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/flying_blue ~73 ~41 ~11

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/gold_island ~37 ~5 ~37
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/gold_island ~37 ~5 ~-17
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/gold_island ~-17 ~5 ~-17
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run place template sc_bw:standart_4/gold_island ~-17 ~5 ~37

# center marker
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~14 ~20 ~14 {Tags:["sc_bw_map_marker", "sc_bw_map_center", "sc_bw_map_center_standart_4"]}

#bottom marker - DEFINES HEIGHT AT WHICH PLAYERS DIE
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~14 ~ ~14 {Tags:["sc_bw_map_marker", "sc_bw_map_bottom"]}

# markers for beds
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-58 ~17 ~14 {Tags:["sc_bw_map_marker", "sc_bw_red_bed"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~86 ~17 ~14 {Tags:["sc_bw_map_marker", "sc_bw_blue_bed"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~14 ~17 ~86 {Tags:["sc_bw_map_marker", "sc_bw_green_bed"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~14 ~17 ~-58 {Tags:["sc_bw_map_marker", "sc_bw_yellow_bed"]}

# markers for spawnpoints
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-51 ~16 ~14 {Tags:["sc_bw_map_marker", "sc_bw_red_spawnpoint"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~79 ~16 ~14 {Tags:["sc_bw_map_marker", "sc_bw_blue_spawnpoint"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~14 ~16 ~79 {Tags:["sc_bw_map_marker", "sc_bw_green_spawnpoint"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~14 ~16 ~-51 {Tags:["sc_bw_map_marker", "sc_bw_yellow_spawnpoint"]}

# markers for generators
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-64 ~16 ~14 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~92 ~16 ~14 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~14 ~16 ~92 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~14 ~16 ~-64 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~41 ~16 ~41 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~41 ~16 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-13 ~16 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-13 ~16 ~41 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~21 ~20 ~21 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~7 ~20 ~7 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~21 ~20 ~7 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~7 ~20 ~21 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}

# markers for shops
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-57 ~16 ~7 {Tags:["sc_bw_map_marker", "sc_bw_red_left_trader"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-57 ~16 ~21 {Tags:["sc_bw_map_marker", "sc_bw_red_right_trader"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~85 ~16 ~21 {Tags:["sc_bw_map_marker", "sc_bw_blue_left_trader"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~85 ~16 ~7 {Tags:["sc_bw_map_marker", "sc_bw_blue_right_trader"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~7 ~16 ~85 {Tags:["sc_bw_map_marker", "sc_bw_green_left_trader"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~21 ~16 ~85 {Tags:["sc_bw_map_marker", "sc_bw_green_right_trader"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~21 ~16 ~-57 {Tags:["sc_bw_map_marker", "sc_bw_yellow_left_trader"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~7 ~16 ~-57 {Tags:["sc_bw_map_marker", "sc_bw_yellow_right_trader"]}

# glass dome
execute as @e[type=marker, tag=sc_bw_map_center] at @s positioned ~ ~50 ~ run place template sc_bw:glass_dome ~-19 ~ ~-19
execute as @e[type=marker, tag=sc_bw_map_center] at @s run summon minecraft:marker ~19 ~51 ~19 {Tags:["sc_bw_map_marker", "sc_bw_map_glass_dome"]}

