# sc_bw #SELECTED_MAP is a enum that represents a current selected map
# 0 - no map selected
# 1 - standart map 2 teams
# 2 - standart map 4 teams
# 3 - sea map 2 teams
# 4 - sea map 4 teams


# To detect player deaths
scoreboard objectives add gameDeathBw deathCount

#For whatever else
scoreboard objectives add sc_bw dummy
scoreboard players set #SELECTED_MAP sc_bw 0

tellraw @a [{"text": "SC Bedwars loaded"}]