scoreboard objectives add sc_bw dummy
# sc_bw #SELECTED_MAP is a enum that represents a current selected map
# 0 - no map selected
# 1 - standart map 2 teams
# 2 - standart map 4 teams
# 3 - sea map 2 teams
# 4 - sea map 4 teams
scoreboard players set #SELECTED_MAP sc_bw 0

# sc_bw #TEAM_AMOUNT represents current amount of teams selected
# 0 - 0 teams
# 2 - 2 teams
# 4 - 4 teams
# 8 - 8 teams 
scoreboard players set #TEAM_AMOUNT sc_bw 0

# sc_bw #IS_START_TIMER_RUNNING is a bool value that represents whether the timer at the start of the game is running
# 0 - false
# 1 - true
scoreboard players set #IS_START_TIMER_RUNNING sc_bw 0

# sc_bw #START_TIMER_COUNT is a variable for amount of time left for timer to start the game
# 0 - minimum
# 10 - maximum
scoreboard players set #START_TIMER_COUNT sc_bw 10

# sc_bw #IS_GAME_RUNNING is a bool value that represents whether the game is running
# 0 - false
# 1 - true
scoreboard players set #IS_GAME_RUNNING sc_bw 0

# To detect player deaths
scoreboard objectives add gameDeathBw deathCount

tellraw @a [{"text": "SC Bedwars loaded"}]