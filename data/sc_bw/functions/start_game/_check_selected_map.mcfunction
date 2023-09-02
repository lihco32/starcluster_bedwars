#if no selected map
#   refuse starting the game
execute if score #SELECTED_MAP sc_bw matches 0 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}
execute if score #SELECTED_MAP sc_bw matches 0 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Не обрано жодну карту", "color":"white"}]
execute if score #SELECTED_MAP sc_bw matches 0 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}
#   turn off timer
execute if score #SELECTED_MAP sc_bw matches 0 run scoreboard players set #IS_START_TIMER_RUNNING sc_bw 0

#if selected map
#   start timer
scoreboard players set #START_TIMER_COUNT sc_bw 10
execute if score #SELECTED_MAP sc_bw matches 1.. run function sc_bw:start_game/_start_timer
