# Hooked 'em!


say Hooked 'em!


scoreboard players set @s hook_atk_cd 80


execute as @e[distance=0,type=zombie,tag=the_butcher] at @s run teleport @s ~ ~ ~ facing entity @p feet
execute as @e[distance=0,type=zombie,tag=the_butcher] at @s run function zcbm:raycast_meat
execute as @e[distance=0,type=zombie,tag=the_butcher] at @e[type=player,tag=meat] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["dead_mark"],Duration:20}
execute if entity @e[distance=0,type=zombie,tag=the_butcher] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
