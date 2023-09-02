# Show time
execute at @e[type=marker, tag=sc_bw_lobby_center] run title @a[distance=..30] subtitle {"text": "Увага, усі речі учасників буде знищено", "color":"dark_red"}
execute at @e[type=marker, tag=sc_bw_lobby_center] run title @a[distance=..30] title {"score": {"name":"#START_TIMER_COUNT", "objective":"sc_bw"}, "color":"white"}
execute at @e[type=marker, tag=sc_bw_lobby_center] as @a[distance=..30] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.5 1

# Reduce time variable
scoreboard players remove #START_TIMER_COUNT sc_bw 1

# schedule message for next second if 1..10 seconds left
execute if score #IS_START_TIMER_RUNNING sc_bw matches 1 if score #START_TIMER_COUNT sc_bw matches 1..10 run schedule function sc_bw:start_game/_timer_normal_tick 1s
# start final checks if 0 seconds left
execute if score #IS_START_TIMER_RUNNING sc_bw matches 1 if score #START_TIMER_COUNT sc_bw matches 0 as @a[distance=..30] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.9 1
execute if score #IS_START_TIMER_RUNNING sc_bw matches 1 if score #START_TIMER_COUNT sc_bw matches 0 run function sc_bw:start_game/_check_team_amount

execute if score #IS_START_TIMER_RUNNING sc_bw matches 1 if score #START_TIMER_COUNT sc_bw matches 0 run scoreboard players set #IS_TIMER_RUNNING sc_bw 0
