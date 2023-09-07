#kill villagers
execute as @e[type=marker, tag=sc_bw_map_center, tag=sc_bw_map_center_sea_4] at @s run kill @e[type=villager,tag=sc_bw_trader,distance=..160]

#remove map
#   whole map
function sc_bw:placers/_sea_4/_remove_map_sea_4_part1
schedule function sc_bw:placers/_sea_4/_remove_map_sea_4_part2 10t
schedule function sc_bw:placers/_sea_4/_remove_map_sea_4_part3 20t
schedule function sc_bw:placers/_sea_4/_remove_map_sea_4_part4 30t

#remove items
schedule function sc_bw:helpers/_kill_items 34t

#remove markers
schedule function sc_bw:placers/_remove_markers 36t