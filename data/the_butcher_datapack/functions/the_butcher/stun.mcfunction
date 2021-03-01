


say Stun!




execute as @e[tag=stunned] at @e[tag=the_butcher] run tp @s ^ ^1.3 ^1.3
execute as @e[tag=stunned] at @e[tag=the_butcher] run teleport @s ~ ~ ~ facing entity @p feet
execute as @e[tag=stunned] run teleport @s ~ ~ ~ facing entity @e[tag=the_butcher,limit=1] feet
effect give @p[tag=stunned] slowness 1 255 true
effect give @p[tag=stunned] slow_falling 1 255 true
effect give @p[tag=stunned] blindness 1 255 true
effect give @p[tag=stunned] weakness 1 255 true
effect give @p[tag=stunned] mining_fatigue 1 220 true
#effect give @p[tag=stunned] instant_damage 1 0 true
