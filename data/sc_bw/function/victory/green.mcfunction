execute at @e[type=marker, tag=sc_bw_map_center] run tellraw @a[distance=..400] {"text":"================","color":"#0033cc"}
execute at @e[type=marker, tag=sc_bw_map_center] run tellraw @a[distance=..400] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Зелена команда перемогла", "color":"#30c62d"}]
execute at @e[type=marker, tag=sc_bw_map_center] run tellraw @a[distance=..400] {"text":"================","color":"#0033cc"} 
scoreboard players set #IS_GAME_RUNNING sc_bw 0
schedule function sc_bw:helpers/_after_game_clean_up 1s
