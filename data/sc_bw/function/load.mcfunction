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

# To count time since player's death
scoreboard objectives add sc_bw_death_timer dummy

# To store player's Y positions
scoreboard objectives add sc_bw_Y_pos dummy

# Is not updated automatically. Is only needed as a placeholder variable for player respawn functionality
scoreboard objectives add sc_bw_is_players_bed_present dummy

# Is used to keep track of beds present. Is updated in a game cycle
scoreboard objectives add sc_bw_bed_present dummy
function sc_bw:helpers/_reset_bed_present



# #RED_STILL_IN_GAME sc_bw - amount of players still alive AND respawnable for the red team
#   is set at the start of the game and updated automatically
#   is used for detecting game end


# bool value. Is set to 0 for every player at the start of the game. Defines whether the player has
# already decremented a list of players_in_game. Is meant to prevent double-decrements
scoreboard objectives add sc_bw_has_left_alive_list dummy


tellraw @a [{"text": "SC Bedwars loaded by LiHCO3, rtkkv, Blackays"}]