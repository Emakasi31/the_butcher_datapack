			#======================#
			# made by zcbm command #
			#======================#
			#
# Если рядом игрок, добавлять единичку в таймер
execute if entity @a[gamemode=!spectator,distance=2..10] run scoreboard players add @s timer 1

# Если таймер больше 30, активировать следующую функцию
execute if entity @a[gamemode=!spectator,distance=2..10] if score @s timer matches 30.. run function zcbm:example/throw2