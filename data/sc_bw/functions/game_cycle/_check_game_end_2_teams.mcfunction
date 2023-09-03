# init variables
# amount of players alive from each team
scoreboard players set #RED_ALIVE sc_bw 0
scoreboard players set #BLUE_ALIVE sc_bw 0

#count players
execute as @a[tag=sc_bw_red, tag=!sc_bw_dead] run scoreboard players add #RED_ALIVE sc_bw 1
execute as @a[tag=sc_bw_blue, tag=!sc_bw_dead] run scoreboard players add #BLUE_ALIVE sc_bw 1

#determine whether the game should end
execute if score #RED_ALIVE sc_bw matches 1.. if score #BLUE_ALIVE sc_bw matches 0 if score #BLUE sc_bw_bed_present matches 0 run function sc_bw:victory/red
execute if score #BLUE_ALIVE sc_bw matches 1.. if score #RED_ALIVE sc_bw matches 0 if score #RED sc_bw_bed_present matches 0 run function sc_bw:victory/blue

# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_check_game_end_2_teams 3s