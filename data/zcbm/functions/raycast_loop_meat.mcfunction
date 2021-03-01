# Добавить единичку в счёт Distance
scoreboard players add @s Distance 1

# Визуальный эффект чтобы видеть этот луч
#particle minecraft:dust 1.000 1.000 1.000 1 ~ ~ ~ 0 0 0 0 1 force

# Удочка стреляющая фаерболлами
execute if entity @s[nbt={SelectedItem:{tag:{fireball:1}}}] run function zcbm:example2/fireball
# Удочка стреляющая свиньями
execute if entity @s[nbt={SelectedItem:{tag:{pig:1}}}] run function zcbm:example2/pig_fire

# Проверка что луч столкнулся с каким-то блоком
execute unless block ~ ~ ~ minecraft:air as @s[scores={Distance=..100}] positioned ^ ^ ^-0.5 run function zcbm:raycast_end
# Проверка что луч столкнулся с какой-то сущностью



execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!raycaster] positioned ~ ~1 ~ run tag @p[tag=!raycaster] add meat


#execute as @e[tag=meat] at @e[tag=the_butcher] run tp @s ^ ^1.3 ^1.3
#tag @p remove meat

execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!raycaster] positioned ~ ~1 ~ run function zcbm:raycast_end

# Проверка что луч ни с чем не столкнулся и сработало ограничение дистанции
execute as @s[scores={Distance=100}] positioned ^ ^ ^-0.5 run function zcbm:raycast_end

# Зацикливание функции
execute if block ~ ~ ~ minecraft:air as @s[scores={Distance=..100}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!raycaster] positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function zcbm:raycast_loop
