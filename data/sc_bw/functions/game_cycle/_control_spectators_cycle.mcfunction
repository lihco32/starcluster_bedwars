execute as @a[tag=sc_bw_spectator] at @e[type=marker,tag=sc_bw_map_center,limit=1] unless entity @s[distance=..500] run tag @s add sc_bw_spectator_escape
execute as @a[tag=sc_bw_dead] at @e[type=marker,tag=sc_bw_map_center,limit=1] unless entity @s[distance=..500] run tag @s add sc_bw_spectator_escape
function sc_bw:helpers/_handle_spectator_escape

# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_control_spectators_cycle 1s