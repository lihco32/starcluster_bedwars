execute at @e[type=marker, tag=sc_bw_map_center] run tellraw @a[distance=..400] {"text":"================","color":"#0033cc"}
execute at @e[type=marker, tag=sc_bw_map_center] run tellraw @a[distance=..400] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Чорна команда перемогла", "color":"#383838"}]
execute at @e[type=marker, tag=sc_bw_map_center] run tellraw @a[distance=..400] {"text":"================","color":"#0033cc"} 

schedule function sc_bw:helpers/_after_game_clean_up 1s
