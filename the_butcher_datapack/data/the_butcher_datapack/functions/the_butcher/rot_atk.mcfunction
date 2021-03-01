


say Something's rotten!


summon minecraft:area_effect_cloud ~ ~1 ~ {Particle:"totem_of_undying",Radius:3f,Duration:20}
summon minecraft:area_effect_cloud ~ ~1 ~ {Particle:"sneeze",Radius:3f,Duration:20}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"sneeze",Radius:3f,Duration:20,Potion:"minecraft:harming"}
effect give @s[distance=0,type=zombie,tag=the_butcher] instant_damage 1 1 true
effect give @s[distance=0,type=zombie,tag=the_butcher] instant_health 1 2 true
effect give @e[distance=0..3,type=player] slowness 1 3 true
effect give @p[distance=0..3] slow_falling 1 255 true
scoreboard players set @s rot_atk_cd 20
