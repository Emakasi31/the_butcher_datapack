scoreboard players set @e[type=zombie,tag=the_butcher] bf_mode 3
scoreboard players set @e[type=zombie,tag=the_butcher] bf_cd 200
execute as @e[type=zombie,tag=the_butcher] at @s run summon minecraft:area_effect_cloud ~ ~2.52 ~ {Tags:["bf_view"],Duration:999999999}
execute as @e[type=zombie,tag=the_butcher] at @s run summon minecraft:area_effect_cloud ~ ~2.52 ~ {Tags:["bf_facing"],Duration:999999999}
