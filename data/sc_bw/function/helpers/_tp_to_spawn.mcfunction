# teleports tag=sc_bw_need_tp to their team's spawn

execute as @a[tag=sc_bw_red, tag=sc_bw_need_tp] at @e[tag=sc_bw_red_spawnpoint] run tp @s ~ ~ ~
execute as @a[tag=sc_bw_blue, tag=sc_bw_need_tp] at @e[tag=sc_bw_blue_spawnpoint] run tp @s ~ ~ ~
execute as @a[tag=sc_bw_green, tag=sc_bw_need_tp] at @e[tag=sc_bw_green_spawnpoint] run tp @s ~ ~ ~
execute as @a[tag=sc_bw_yellow, tag=sc_bw_need_tp] at @e[tag=sc_bw_yellow_spawnpoint] run tp @s ~ ~ ~
execute as @a[tag=sc_bw_purple, tag=sc_bw_need_tp] at @e[tag=sc_bw_purple_spawnpoint] run tp @s ~ ~ ~
execute as @a[tag=sc_bw_pink, tag=sc_bw_need_tp] at @e[tag=sc_bw_pink_spawnpoint] run tp @s ~ ~ ~
execute as @a[tag=sc_bw_black, tag=sc_bw_need_tp] at @e[tag=sc_bw_black_spawnpoint] run tp @s ~ ~ ~
execute as @a[tag=sc_bw_white, tag=sc_bw_need_tp] at @e[tag=sc_bw_white_spawnpoint] run tp @s ~ ~ ~

tag @a[tag=sc_bw_need_tp] remove sc_bw_need_tp