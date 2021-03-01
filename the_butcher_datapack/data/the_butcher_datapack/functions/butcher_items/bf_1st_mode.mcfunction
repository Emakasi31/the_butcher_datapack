
execute as @e[type=minecraft:area_effect_cloud,tag=bf_facing] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[type=minecraft:area_effect_cloud,tag=bf_facing] at @s run tp @s ^ ^ ^0.09
execute as @e[type=minecraft:area_effect_cloud,tag=bf_view] at @s if entity @p[distance=0..2,predicate=the_butcher_datapack:sneaking] run scoreboard players set @e[type=zombie,tag=the_butcher] bf_mode 2
