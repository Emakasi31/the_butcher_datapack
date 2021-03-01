
execute as @e[type=minecraft:area_effect_cloud,tag=bf_facing] at @s run tp @s ~ ~ ~ facing entity @e[type=zombie,tag=the_butcher,limit=1] eyes
execute as @e[type=minecraft:area_effect_cloud,tag=bf_facing] at @s run tp @s ^ ^ ^0.09
execute as @e[type=minecraft:area_effect_cloud,tag=bf_view] at @s if entity @e[type=zombie,tag=the_butcher,distance=0..2,limit=1] run scoreboard players set @e[type=zombie,tag=the_butcher] bf_mode 3
