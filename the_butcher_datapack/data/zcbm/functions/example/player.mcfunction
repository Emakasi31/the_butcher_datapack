			#======================#
			# made by zcbm command #
			#======================#
			#
			
# Получаем координаты игрока
# Pos[0] - X, Pos[1] - Y, Pos[2] - Z
execute store result score *p_x timer run data get entity @s Pos[0] 1000
execute store result score *p_y timer run data get entity @s Pos[1] 1000
execute store result score *p_z timer run data get entity @s Pos[2] 1000