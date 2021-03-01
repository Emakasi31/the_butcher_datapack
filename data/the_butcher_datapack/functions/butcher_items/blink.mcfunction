# blink!


say Blink!


scoreboard players set @e[type=zombie,tag=the_butcher] blink_cd 300

execute as @e[distance=0,type=zombie,tag=the_butcher] at @p run summon firework_rocket ^ ^1 ^-2 {Silent:1b,LifeTime:2,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11250603]}]}}}}
execute as @e[distance=0,type=zombie,tag=the_butcher] at @s run teleport @s ~ ~ ~ facing entity @p feet
execute as @e[distance=0,type=zombie,tag=the_butcher] at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["blink_cloud"],Duration:41}
#execute as @e[type=minecraft:area_effect_cloud,tag=blink_cloud] at @s if block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ minecraft:netherrack
#execute as @e[distance=0,type=zombie,tag=the_butcher] at @e[type=minecraft:area_effect_cloud,tag=blink_cloud] run tp @s ^ ^1.3 ^-2

#execute if entity @e[distance=0..1,type=zombie,tag=the_butcher] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

#execute as @e[tag=the_butcher,type=zombie,scores={blink_cd=73}] at @e[type=minecraft:area_effect_cloud,tag=dead_mark] if entity @e[type=player,distance=0..2,tag=meat] run execute as @e[type=player,tag=meat] at @e[type=zombie,tag=the_butcher] run tp @s ^ ^1.3 ^1.3
