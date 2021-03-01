			#======================#
			# made by zcbm command #
			#======================#
			#
# Полученный ранее вектор записываем в NBT сущности
# Motion[0] - X, Motion[1] - Y, Motion[2] - Z
execute store result entity @s Motion[0] double 0.0002 run scoreboard players get *p_x timer
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get *p_y timer
execute store result entity @s Motion[2] double 0.0002 run scoreboard players get *p_z timer

# Удаляем тег
tag @s remove Axe0