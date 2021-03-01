scoreboard players set @e[type=zombie,tag=the_butcher] bf_dmg_cd 20
execute as @e[type=minecraft:area_effect_cloud,tag=bf_bl,limit=1] at @s run effect give @p[distance=0..3,limit=1,sort=nearest,predicate=!the_butcher_datapack:sneaking] instant_damage 1 0 true
