# Получаем вектор взгяда сущности относительно которой запущена функция
function zcbm:vector/get_vec

# Призываем любую сущность для которой нужно задать Motion (или direction)
summon pig ~ ~ ~ {Tags:["arr"]}

# Относительно ближайшей сущности с тегом "arr" запускаем функцию
execute as @e[type=pig,tag=arr,sort=nearest,limit=1] run function zcbm:example2/pig_fire2