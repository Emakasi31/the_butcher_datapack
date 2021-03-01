			#======================#
			# made by zcmb command #
			#======================#
			#

# По данной формуле получаем синус Y
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG timer = *YR timer
execute if score *YR timer matches 180000.. run scoreboard players remove *ANG timer 180000
execute if score *ANG timer matches ..90000 run function zcbm:mat/cos/cos

scoreboard players set *zcbm_90 timer 0
execute if score *ANG timer matches 90000.. run scoreboard players set *zcbm_90 timer 1
execute if score *zcbm_90 timer matches 1 run scoreboard players remove *ANG timer 90000
execute if score *zcbm_90 timer matches 1 run function zcbm:mat/sin/sin



scoreboard players operation *COSY timer = *M1 timer
execute if score *YR timer matches 90000.. if score *YR timer matches ..270000 run scoreboard players operation *COSY timer *= *-1 CONST
