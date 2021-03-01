			#======================#
			# made by zcmb command #
			#======================#
			#
# Сама формула
scoreboard players set *M1 timer 324000000
scoreboard players set *M2 timer 40
scoreboard players operation *M2 timer *= *ANG timer
scoreboard players operation *M2 timer /= *1000 CONST
scoreboard players operation *M2 timer *= *ANG timer
scoreboard players operation *M1 timer -= *M2 timer
scoreboard players operation *M2 timer = *ANG timer
scoreboard players operation *M2 timer /= *1000 CONST
scoreboard players operation *M2 timer *= *ANG timer
scoreboard players add *M2 timer 32400000
scoreboard players operation *M2 timer /= *1000 CONST
scoreboard players operation *M1 timer /= *M2 timer