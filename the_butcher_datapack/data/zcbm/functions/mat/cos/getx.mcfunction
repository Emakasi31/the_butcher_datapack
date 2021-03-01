			#======================#
			# made by zcmb command #
			#======================#
			#
			
# По данной формуле получаем косинус X
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG timer = *XR timer
execute if score *ANG timer matches ..0 run scoreboard players operation *ANG timer *= *-1 CONST
function zcbm:mat/cos/cos
scoreboard players operation *COSX timer = *M1 timer