# set structures
function sc_bw:placers/_sea_2/_place_map_sea_2_part1

schedule function sc_bw:placers/_sea_2/_place_map_sea_2_part2 8t

schedule function sc_bw:placers/_sea_2/_place_map_sea_2_part3 18t

schedule function sc_bw:placers/_sea_2/_place_map_sea_2_part4 30t

# center marker
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~8 ~11 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_map_center", "sc_bw_map_center_sea_2"]}

#bottom marker - DEFINES HEIGHT AT WHICH PLAYERS DIE
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~ ~3 ~ {Tags:["sc_bw_map_marker", "sc_bw_map_bottom"]}

# markers for beds
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-69 ~6 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_red_bed"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~85 ~6 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_blue_bed"]}

# markers for spawnpoints
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-75 ~7 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_red_spawnpoint"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~90 ~7 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_blue_spawnpoint"]}

# markers for generators
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-80 ~7 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~96 ~7 ~-13 {Tags:["sc_bw_map_marker", "sc_bw_iron_generator"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-28 ~7 ~-50 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~44 ~7 ~24 {Tags:["sc_bw_map_marker", "sc_bw_gold_generator"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~10 ~11 ~-11 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~6 ~11 ~-15 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~10 ~11 ~-15 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~6 ~11 ~-11 {Tags:["sc_bw_map_marker", "sc_bw_emerald_generator"]}

# markers for shops
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-75 ~7 ~-16 {Tags:["sc_bw_map_marker", "sc_bw_red_left_trader"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~-75 ~7 ~-10 {Tags:["sc_bw_map_marker", "sc_bw_red_right_trader"]}

execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~91 ~7 ~-10 {Tags:["sc_bw_map_marker", "sc_bw_blue_left_trader"]}
execute as @e[type=marker, tag=sc_bw_lobby_center] at @s positioned ~ ~150 ~ run summon minecraft:marker ~91 ~7 ~-16 {Tags:["sc_bw_map_marker", "sc_bw_blue_right_trader"]}

# glass dome
execute as @e[type=marker, tag=sc_bw_map_center] at @s positioned ~ ~50 ~ run place template sc_bw:glass_dome ~-19 ~ ~-19
execute as @e[type=marker, tag=sc_bw_map_center] at @s run summon minecraft:marker ~ ~51 ~ {Tags:["sc_bw_map_marker", "sc_bw_map_glass_dome"]}

