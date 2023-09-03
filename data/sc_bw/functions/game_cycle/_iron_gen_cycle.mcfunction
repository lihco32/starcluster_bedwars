execute at @e[type=marker,tag=sc_bw_iron_generator] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot", Count:1b,tag:{Tags:["sc_bw_item"]}}}

# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_iron_gen_cycle 1s