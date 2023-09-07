#determine whether the game should end
execute if score #RED_STILL_IN_GAME sc_bw matches 1.. if score #BLUE_STILL_IN_GAME sc_bw matches ..0 run function sc_bw:victory/red
execute if score #BLUE_STILL_IN_GAME sc_bw matches 1.. if score #RED_STILL_IN_GAME sc_bw matches ..0 run function sc_bw:victory/blue
execute if score #BLUE_STILL_IN_GAME sc_bw matches ..0 if score #RED_STILL_IN_GAME sc_bw matches ..0 run function sc_bw:victory/no_one

# recursion
execute if score #IS_GAME_RUNNING sc_bw matches 1 run schedule function sc_bw:game_cycle/_check_game_end_2_teams 3s