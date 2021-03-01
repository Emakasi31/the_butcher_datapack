
execute as @e[type=vex,tag=dagon] at @s if entity @p[distance=0..1.1] run tag @s add blow_dagon
execute as @e[type=vex,tag=blow_dagon] run say dagon_sound
execute at @e[type=vex,tag=blow_dagon] run effect give @p[distance=0..1.1,limit=1,sort=nearest] instant_damage 1 1 true
execute at @e[type=vex,tag=blow_dagon] run kill @e[type=vex,tag=blow_dagon,limit=1,sort=nearest]



#kill @e[type=vex,tag=blow_dagon,limit=1]

#execute at @e[type=vex,tag=blow_dagon] if entity @p[distance=0..1] run effect give @p[distance=0..1,limit=1,sort=nearest] instant_damage 1 2 true
#execute as @e[type=vex,tag=blow_dagon] if entity @p[distance=0..1] run kill @e[type=vex,tag=blow_dagon]
