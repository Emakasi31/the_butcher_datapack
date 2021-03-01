
#execute as @e[type=minecraft:area_effect_cloud,tag=bf_facing] at @s run tp @s ~ ~ ~ facing entity @e[type=zombie,tag=the_butcher,limit=1] eyes
execute at @e[type=zombie,tag=the_butcher] as @e[type=minecraft:area_effect_cloud,tag=bf_facing] run tp @s ~ ~2.52 ~
scoreboard players remove @e[tag=the_butcher,type=zombie,scores={bf_cd=1..}] bf_cd 1
#execute as @e[type=minecraft:area_effect_cloud,tag=bf_view] at @s if entity @e[type=zombie,tag=the_butcher,distance=0..2] run scoreboard players set @e[type=zombie,tag=the_butcher] bf_mode 3
