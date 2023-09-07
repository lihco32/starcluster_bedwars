# for every player with tag=sc_bw_remove_from_alive_list, decrements his team's players alive value

execute as @a[tag=sc_bw_remove_from_alive_list,tag=sc_bw_red,scores={sc_bw_has_left_alive_list=0}] run scoreboard players remove #RED_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_remove_from_alive_list,tag=sc_bw_blue,scores={sc_bw_has_left_alive_list=0}] run scoreboard players remove #BLUE_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_remove_from_alive_list,tag=sc_bw_green,scores={sc_bw_has_left_alive_list=0}] run scoreboard players remove #GREEN_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_remove_from_alive_list,tag=sc_bw_yellow,scores={sc_bw_has_left_alive_list=0}] run scoreboard players remove #YELLOW_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_remove_from_alive_list,tag=sc_bw_purple,scores={sc_bw_has_left_alive_list=0}] run scoreboard players remove #PURPLE_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_remove_from_alive_list,tag=sc_bw_pink,scores={sc_bw_has_left_alive_list=0}] run scoreboard players remove #PINK_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_remove_from_alive_list,tag=sc_bw_black,scores={sc_bw_has_left_alive_list=0}] run scoreboard players remove #BLACK_STILL_IN_GAME sc_bw 1
execute as @a[tag=sc_bw_remove_from_alive_list,tag=sc_bw_white,scores={sc_bw_has_left_alive_list=0}] run scoreboard players remove #WHITE_STILL_IN_GAME sc_bw 1

# mark player to avoid double-decrements
scoreboard players set @a[tag=sc_bw_remove_from_alive_list,scores={sc_bw_has_left_alive_list=0}] sc_bw_has_left_alive_list 1

tag @a[tag=sc_bw_remove_from_alive_list] remove sc_bw_remove_from_alive_list
