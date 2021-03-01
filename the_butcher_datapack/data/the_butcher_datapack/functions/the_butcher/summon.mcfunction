
summon zombie ~ ~1 ~ {Silent:1b,Health:500f,IsBaby:0b,CanBreakDoors:1b,CustomNameVisible:0b,Tags:["the_butcher"],CustomName:'{"text":"the_butcher"}',ArmorItems:[{},{},{},{id:"minecraft:porkchop",Count:1b,tag:{CustomModelData:148896}}],CanPickUpLoot:1b,DrownedConversionTime:9999999999,ActiveEffects:[{Id:12b,Amplifier:255b,Duration:999999999,ShowParticles:0b},{Id:13b,Amplifier:255b,Duration:999999999,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:1},{Id:31b,Amplifier:3b,Duration:999999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:500},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:7},{Name:generic.armor,Base:4}]}

execute as @e[type=zombie,tag=the_butcher] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:chain",Count:1b}},sort=nearest,limit=1]
execute as @e[type=zombie,tag=the_butcher] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_axe",Count:1b}},sort=nearest,limit=1]
execute as @e[type=zombie,tag=the_butcher] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell",Count:1b}},sort=nearest,limit=1]
execute as @e[type=zombie,tag=the_butcher] at @s run kill @e[type=hoglin,sort=nearest,limit=1]
execute as @e[type=zombie,tag=the_butcher] run attribute @e[type=zombie,tag=the_butcher,limit=1] minecraft:generic.max_health base set 500
execute as @e[type=zombie,tag=the_butcher] run attribute @e[type=zombie,tag=the_butcher,limit=1] minecraft:generic.attack_damage base set 7
execute as @e[type=zombie,tag=the_butcher] run bossbar set minecraft:butcher max 500
execute as @e[type=zombie,tag=the_butcher] run bossbar set minecraft:butcher style notched_10
execute as @e[type=zombie,tag=the_butcher] run tag @s add proj_aura
