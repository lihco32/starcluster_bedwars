# Message is game is already running
execute if score #IS_GAME_RUNNING sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}
execute if score #IS_GAME_RUNNING sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Гра досі триває", "color":"white"}]
execute if score #IS_GAME_RUNNING sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"} 

# Timer = !Timer
execute if score #IS_GAME_RUNNING sc_bw matches 0 run scoreboard players operation #TEMP sc_bw = #IS_START_TIMER_RUNNING sc_bw
execute if score #IS_GAME_RUNNING sc_bw matches 0 if score #TEMP sc_bw matches 0 run scoreboard players set #IS_START_TIMER_RUNNING sc_bw 1
execute if score #IS_GAME_RUNNING sc_bw matches 0 if score #TEMP sc_bw matches 1 run scoreboard players set #IS_START_TIMER_RUNNING sc_bw 0

# Message if timer got stopped
execute if score #IS_GAME_RUNNING sc_bw matches 0 if score #TEMP sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}
execute if score #IS_GAME_RUNNING sc_bw matches 0 if score #TEMP sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Таймер зупинено", "color":"white"}]
execute if score #IS_GAME_RUNNING sc_bw matches 0 if score #TEMP sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"} 

# continue
execute if score #IS_START_TIMER_RUNNING sc_bw matches 1 run function sc_bw:start_game/_check_selected_map
