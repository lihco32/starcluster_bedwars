execute store result score #TEMPURA sc_bw run scoreboard players get #RED sc_bw_bed_present
execute as @e[type=marker, tag=sc_bw_red_bed, limit=1] at @s unless block ~ ~ ~ red_bed run scoreboard players set #RED sc_bw_bed_present 0
execute unless score #TEMPURA sc_bw = #RED sc_bw_bed_present run execute at @e[type=marker,tag=sc_bw_map_center] run title @a[distance=..300] title {"text":"Червоне ліжко знищено", "color":"dark_red"}

execute store result score #TEMPURA sc_bw run scoreboard players get #BLUE sc_bw_bed_present
execute as @e[type=marker, tag=sc_bw_blue_bed, limit=1] at @s unless block ~ ~ ~ blue_bed run scoreboard players set #BLUE sc_bw_bed_present 0
execute unless score #TEMPURA sc_bw = #BLUE sc_bw_bed_present run execute at @e[type=marker,tag=sc_bw_map_center] run title @a[distance=..300] title {"text":"Синє ліжко знищено", "color":"blue"}

execute store result score #TEMPURA sc_bw run scoreboard players get #GREEN sc_bw_bed_present
execute as @e[type=marker, tag=sc_bw_green_bed, limit=1] at @s unless block ~ ~ ~ lime_bed run scoreboard players set #GREEN sc_bw_bed_present 0
execute unless score #TEMPURA sc_bw = #GREEN sc_bw_bed_present run execute at @e[type=marker,tag=sc_bw_map_center] run title @a[distance=..300] title {"text":"Зелене ліжко знищено", "color":"#30c62d"}

execute store result score #TEMPURA sc_bw run scoreboard players get #YELLOW sc_bw_bed_present
execute as @e[type=marker, tag=sc_bw_yellow_bed, limit=1] at @s unless block ~ ~ ~ yellow_bed run scoreboard players set #YELLOW sc_bw_bed_present 0
execute unless score #TEMPURA sc_bw = #YELLOW sc_bw_bed_present run execute at @e[type=marker,tag=sc_bw_map_center] run title @a[distance=..300] title {"text":"Жовте ліжко знищено", "color":"#ffff00"}

execute store result score #TEMPURA sc_bw run scoreboard players get #PURPLE sc_bw_bed_present
execute as @e[type=marker, tag=sc_bw_purple_bed, limit=1] at @s unless block ~ ~ ~ purple_bed run scoreboard players set #PURPLE sc_bw_bed_present 0
execute unless score #TEMPURA sc_bw = #PURPLE sc_bw_bed_present run execute at @e[type=marker,tag=sc_bw_map_center] run title @a[distance=..300] title {"text":"Фіолетове ліжко знищено", "color":"#680285"}

execute store result score #TEMPURA sc_bw run scoreboard players get #PINK sc_bw_bed_present
execute as @e[type=marker, tag=sc_bw_pink_bed, limit=1] at @s unless block ~ ~ ~ pink_bed run scoreboard players set #PINK sc_bw_bed_present 0
execute unless score #TEMPURA sc_bw = #PINK sc_bw_bed_present run execute at @e[type=marker,tag=sc_bw_map_center] run title @a[distance=..300] title {"text":"Рожеве ліжко знищено", "color":"#ffc0cb"}

execute store result score #TEMPURA sc_bw run scoreboard players get #BLACK sc_bw_bed_present
execute as @e[type=marker, tag=sc_bw_black_bed, limit=1] at @s unless block ~ ~ ~ black_bed run scoreboard players set #BLACK sc_bw_bed_present 0
execute unless score #TEMPURA sc_bw = #BLACK sc_bw_bed_present run execute at @e[type=marker,tag=sc_bw_map_center] run title @a[distance=..300] title {"text":"Чорне ліжко знищено", "color":"#383838"}

execute store result score #TEMPURA sc_bw run scoreboard players get #WHITE sc_bw_bed_present
execute as @e[type=marker, tag=sc_bw_white_bed, limit=1] at @s unless block ~ ~ ~ white_bed run scoreboard players set #WHITE sc_bw_bed_present 0
execute unless score #TEMPURA sc_bw = #WHITE sc_bw_bed_present run execute at @e[type=marker,tag=sc_bw_map_center] run title @a[distance=..300] title {"text":"Біле ліжко знищено", "color":"#e8e8e8"}

# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_update_beds_status 5t
