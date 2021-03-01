			#======================#
			# made by zcbm command #
			#======================#
			#
			
# Устанавлиет константы
scoreboard players set *10 CONST 10
scoreboard players set *13 CONST 13
scoreboard players set *15 CONST 15

# Получаем координаты игрока
execute as @a[gamemode=!spectator,distance=2..10,sort=random,limit=1] run function zcbm:example/player

# Получаем координаты сущности, относительно которой запущена эта функция
# Pos[0] - X, Pos[1] - Y, Pos[2] - Z
execute store result score *z_x timer run data get entity @s Pos[0] 1000
execute store result score *z_y timer run data get entity @s Pos[1] 1000
execute store result score *z_z timer run data get entity @s Pos[2] 1000

# Получаем вектор из двух точек
scoreboard players operation *p_x timer -= *z_x timer
scoreboard players operation *p_y timer -= *z_y timer
scoreboard players operation *p_z timer -= *z_z timer

# Корректировка вертикальной скорости (умножаем Y на 1.3)
scoreboard players operation *p_y timer *= *13 CONST
scoreboard players operation *p_y timer /= *10 CONST

# Призывем сущность для метания с тегом "Axe0"
summon armor_stand ~ ~1.0 ~ {Small:1b,Marker:1b,Invisible:1b,Pose:{Head:[0f,90f,0f]},ArmorItems:[{},{},{},{id:"minecraft:iron_axe",Count:1b}],CustomName:"{\"text\":\"Плагиат\"}",Tags:["Axe","Axe0"]}

# Относительно ближайшей сущности с тегом "Axe0" запускаем функцию
execute as @e[type=armor_stand,tag=Axe0,sort=nearest,limit=1] run function zcbm:example/axe

# Сбрасываем таймер
scoreboard players set @s timer 0