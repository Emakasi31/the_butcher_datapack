			#======================#
			# made by zcbm command #
			#======================#
			#
# Убиваем сущность если она на земле
kill @s[nbt={OnGround:1b}]

# Наносим урон игрокам
effect give @a[dy=-1] minecraft:instant_damage 1 0 true

# Убиваем сущность если она столкнулась с игроком
execute if entity @a[dy=-1] run kill @s