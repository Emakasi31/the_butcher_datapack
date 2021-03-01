# Дать тег сущности относительно которой запущена эта функция
tag @s add raycaster

# Сбросить счёт
scoreboard players set @s Distance 0

# Запустить следующую функцию - raycast_loop_meat
execute positioned ~ ~1.3 ~ positioned ^ ^ ^0.5 run function zcbm:raycast_loop_meat

# Забрать тег после окончания рассчёта
tag @s remove raycaster

#scoreboard objectives add Distance dummy
#scoreboard objectives add RC_raycast minecraft.used:minecraft.carrot_on_a_stick
