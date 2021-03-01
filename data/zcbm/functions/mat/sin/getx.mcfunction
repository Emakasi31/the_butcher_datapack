			#======================#
			# made by zcmb command #
			#======================#
			#

# По данной формуле получаем синус X
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG timer = *XR timer
execute if score *ANG timer matches ..0 run scoreboard players operation *ANG timer *= *-1 CONST
function zcbm:mat/sin/sin
execute if score *XR timer matches ..0 run scoreboard players operation *M1 timer *= *-1 CONST
scoreboard players operation *SINX timer = *M1 timer