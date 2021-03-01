# Полученный ранее вектор записываем в NBT сущности

# direction[0] - X, direction[1] - Y, direction[2] - Z
execute store result entity @s direction[0] double 0.0005 run scoreboard players get *X timer
execute store result entity @s direction[1] double 0.0005 run scoreboard players get *Y timer
execute store result entity @s direction[2] double 0.0005 run scoreboard players get *Z timer

# power[0] - X, power[1] - Y, power[2] - Z
execute store result entity @s power[0] double 0.00002 run scoreboard players get *X timer
execute store result entity @s power[1] double 0.00002 run scoreboard players get *Y timer
execute store result entity @s power[2] double 0.00002 run scoreboard players get *Z timer

# Забираем тег у сущности
tag @s remove arr