# changes tag to spectator tags for players with tag=sc_bw_change_to_spectator

execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_player

execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_red
execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_blue
execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_green
execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_yellow
execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_purple
execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_pink
execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_black
execute as @a[tag=sc_bw_change_to_spectator] run tag @s remove sc_bw_white

execute as @a[tag=sc_bw_change_to_spectator] run tag @s add sc_bw_spectator

tag @a[tag=sc_bw_change_to_spectator] remove sc_bw_change_to_spectator