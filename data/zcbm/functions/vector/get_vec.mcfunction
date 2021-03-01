# Получаем угловые координаты и записываем их в счёт
execute store result score *XR timer run data get entity @s Rotation[1] 1000
execute store result score *YR timer run data get entity @s Rotation[0] 1000

# Еслт YR меньше нуля добавляем 360 градусов
execute if score *YR timer matches ..0 run scoreboard players add *YR timer 360000

# Получаем косинус и синус для каждой угловой координате
function zcbm:mat/cos/getx
function zcbm:mat/cos/gety
function zcbm:mat/sin/getx
function zcbm:mat/sin/gety

# Получаем координату X вектора взгляда
scoreboard players operation *X timer = *COSX timer
scoreboard players operation *X timer *= *SINY timer
scoreboard players operation *X timer /= *-10000 CONST

# Получаем координату Z вектора взгляда
scoreboard players operation *Z timer = *COSX timer
scoreboard players operation *Z timer *= *COSY timer
scoreboard players operation *Z timer /= *10000 CONST

# Получаем координату Y вектора взгляда
scoreboard players operation *Y timer = *SINX timer
scoreboard players operation *Y timer *= *-1 CONST
