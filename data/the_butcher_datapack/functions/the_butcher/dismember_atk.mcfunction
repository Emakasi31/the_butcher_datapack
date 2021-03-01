


say Chop-chop!


scoreboard players set @s dismember_atk_cd 230


#effect give @e[type=zombie,tag=the_butcher] regeneration 4 6 true
#effect give @e[type=zombie,tag=the_butcher] instant_damage 1 3 true
tag @p[distance=0..3] add stunned
effect give @p[tag=stunned] nausea 4 255 true
effect give @p[tag=stunned] blindness 4 255 true
effect give @p[tag=stunned] slowness 4 255 true
effect give @p[tag=stunned] slow_falling 4 255 true
effect give @p[tag=stunned] weakness 4 255 true
