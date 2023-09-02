scoreboard players set #SELECTED_MAP sc_bw 1
scoreboard players set #TEAM_AMOUNT sc_bw 2
function sc_bw:lobby_doors/set_2_teams

execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}
execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Обрано карту Стандарт на 2 команди", "color":"white"}]
execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}
