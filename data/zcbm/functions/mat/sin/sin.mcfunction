			#======================#
			# made by zcmb command #
			#======================#
			#
# Сама формула
scoreboard players set *M1 timer 180000
scoreboard players operation *M1 timer -= *ANG timer
scoreboard players operation *M1 timer /= *100 CONST
scoreboard players operation *M1 timer *= *ANG timer
scoreboard players operation *M1 timer *= *4 CONST
scoreboard players set *M2 timer 180000
scoreboard players set *M3 timer 40500000
scoreboard players operation *M2 timer -= *ANG timer
scoreboard players operation *M2 timer /= *1000 CONST
scoreboard players operation *M2 timer *= *ANG timer
scoreboard players operation *M3 timer -= *M2 timer
scoreboard players operation *M3 timer /= *1000 CONST
scoreboard players operation *M1 timer /= *M3 timer