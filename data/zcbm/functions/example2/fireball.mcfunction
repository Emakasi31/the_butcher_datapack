# Получаем вектор взгяда сущности относительно которой запущена функция
function zcbm:vector/get_vec

# Призываем любую сущность для которой нужно задать Motion (или direction)
summon fireball ~ ~ ~ {ExplosionPower:2,direction:[0.0,0.0,0.0],Tags:["arr"]}

# Относительно ближайшей сущности с тегом "arr" запускаем функцию
execute as @e[type=fireball,tag=arr,sort=nearest,limit=1] run function zcbm:example2/fireball2