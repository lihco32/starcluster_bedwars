# USE COMMAND
# scoreboard players set #START_TIMER_COUNT sc_bw 10
# Before starting this timer

execute if score #IS_START_TIMER_RUNNING sc_bw matches 1 if score #START_TIMER_COUNT sc_bw matches 1..10 run function sc_bw:start_game/_timer_normal_tick
 