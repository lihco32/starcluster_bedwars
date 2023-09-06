#works on tag=sc_bw_spectator_escape
#do not use

execute as @a[tag=sc_bw_spectator_escape] at @e[type=marker,tag=sc_bw_map_center,limit=1] run tp @s ~ ~ ~
gamemode spectator @a[tag=sc_bw_spectator_escape] 
schedule function sc_bw:helpers/_gamemode_spectator_for_escapee 1t

tag @a[tag=sc_bw_spectator_escape] remove sc_bw_spectator_escape
