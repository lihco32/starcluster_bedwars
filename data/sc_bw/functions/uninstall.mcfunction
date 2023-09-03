scoreboard objectives remove gameDeathBw
scoreboard objectives remove sc_bw
scoreboard objectives remove sc_bw_death_timer
scoreboard objectives remove sc_bw_Y_pos
scoreboard objectives remove sc_bw_is_players_bed_present
scoreboard objectives remove sc_bw_bed_present 

datapack disable "file/starcluster_bedwars.zip"
datapack disable "file/starcluster_bedwars"
tellraw @a [{"text": "SC Bedwars uninstalled"}]
