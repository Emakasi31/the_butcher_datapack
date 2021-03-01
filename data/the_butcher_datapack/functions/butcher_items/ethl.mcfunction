



execute as @e[type=vex,tag=ethl] at @s if entity @p[distance=0..1.1] run tag @s add blow_ethl
execute as @e[type=vex,tag=blow_ethl] run say dagon_sound
execute at @e[type=vex,tag=blow_ethl] run effect give @p[distance=0..1.1,limit=1,sort=nearest] instant_damage 1 0 true
execute at @e[type=vex,tag=blow_ethl] run effect give @p[distance=0..1.1,limit=1,sort=nearest] weakness 4 220 true
execute at @e[type=vex,tag=blow_ethl] run effect give @p[distance=0..1.1,limit=1,sort=nearest] slowness 4 3 true
execute at @e[type=vex,tag=blow_ethl] run effect give @p[distance=0..1.1,limit=1,sort=nearest] mining_fatigue 4 220 true
execute at @e[type=vex,tag=blow_ethl] run kill @e[type=vex,tag=blow_ethl,limit=1,sort=nearest]
