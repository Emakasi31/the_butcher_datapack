			#======================#
			# made by zcmb command #
			#======================#
			#
			
# По данной формуле получаем синус Y
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG timer = *YR timer
execute if score *ANG timer matches 180000.. run scoreboard players remove *ANG timer 180000
function zcbm:mat/sin/sin
execute if score *YR timer matches 180000.. run scoreboard players operation *M1 timer *= *-1 CONST
scoreboard players operation *SINY timer = *M1 timer