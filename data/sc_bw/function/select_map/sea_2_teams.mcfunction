execute if score #IS_GAME_RUNNING sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}
execute if score #IS_GAME_RUNNING sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Не можна змінювати карту під час гри", "color":"white"}]
execute if score #IS_GAME_RUNNING sc_bw matches 1 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}


execute if score #IS_GAME_RUNNING sc_bw matches 0 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}
execute if score #IS_GAME_RUNNING sc_bw matches 0 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] [{"text":"Бедварс", "color":"#668cff"},{"text":" : "}, {"text":"Обрано карту Море на 2 команди", "color":"white"}]
execute if score #IS_GAME_RUNNING sc_bw matches 0 run execute at @e[type=marker, tag=sc_bw_lobby_center] run tellraw @a[distance=..30] {"text":"================","color":"#0033cc"}

execute if score #IS_GAME_RUNNING sc_bw matches 0 run scoreboard players set #SELECTED_MAP sc_bw 3
execute if score #IS_GAME_RUNNING sc_bw matches 0 run scoreboard players set #TEAM_AMOUNT sc_bw 2
execute if score #IS_GAME_RUNNING sc_bw matches 0 run function sc_bw:lobby_doors/set_2_teams