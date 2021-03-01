##############################################
###This functions created by Timber Forge!!###
##############################################
# AS AT PLAYER HOLDING ITEM IN OFFHAND Positioned 1 up

execute as @e[type=arrow,distance=0..1] run tag @s add from_aura
execute as @e[type=trident,distance=0..1] run tag @s add from_aura
execute as @e[type=armor_stand,tag=wither_bolt,distance=0..1] run tag @s add from_aura
execute as @e[type=armor_stand,tag=nether_proj,distance=0..2.5] run tag @s add from_aura


######## Arrows ########
#### Effects
execute as @e[type=arrow,distance=1.5..4,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 2
execute as @e[type=arrow,distance=1.5..4,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.6
execute as @e[type=arrow,distance=1.5..4,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] at @s run particle minecraft:firework ~ ~ ~ .1 .1 .1 .3 30

#### Block
execute if entity @e[type=arrow,distance=1.5..4,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run clear @s minecraft:command_block{proj_aura:1b} 1

execute as @e[type=arrow,distance=1.5..4,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[0] double -1 run data get entity @s Motion[0]
execute as @e[type=arrow,distance=1.5..4,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[1] double 1 run data get entity @s Motion[1]
execute as @e[type=arrow,distance=1.5..4,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[2] double -1 run data get entity @s Motion[2]

execute as @e[type=arrow,distance=1.5..4,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run tag @s add blocked_proj


######## Fireballs ########
#### Effects
execute as @e[type=small_fireball,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 2
execute as @e[type=small_fireball,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.6
execute as @e[type=small_fireball,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] at @s run particle minecraft:firework ~ ~ ~ .1 .1 .1 .3 30

#### Block
execute if entity @e[type=small_fireball,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run clear @s minecraft:command_block{proj_aura:1b} 1

execute as @e[type=small_fireball,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[0] double -1 run data get entity @s Motion[0]
execute as @e[type=small_fireball,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[1] double -1 run data get entity @s Motion[1]
execute as @e[type=small_fireball,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[2] double -1 run data get entity @s Motion[2]

execute as @e[type=small_fireball,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run tag @s add blocked_proj


######## Trident ########
#### Effects
execute as @e[type=trident,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 2
execute as @e[type=trident,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.6
execute as @e[type=trident,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] at @s run particle minecraft:firework ~ ~ ~ .1 .1 .1 .3 30

#### Block
execute if entity @e[type=trident,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run clear @s minecraft:command_block{proj_aura:1b} 1

execute as @e[type=trident,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[0] double -1 run data get entity @s Motion[0]
execute as @e[type=trident,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[1] double -1 run data get entity @s Motion[1]
execute as @e[type=trident,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[2] double -1 run data get entity @s Motion[2]

execute as @e[type=trident,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run tag @s add blocked_proj

######## Wither Skull ########
#### Effects
execute as @e[type=wither_skull,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 2
execute as @e[type=wither_skull,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.6
execute as @e[type=wither_skull,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] at @s run particle minecraft:firework ~ ~ ~ .1 .1 .1 .3 30

#### Block
execute if entity @e[type=wither_skull,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run clear @s minecraft:command_block{proj_aura:1b} 1

execute as @e[type=wither_skull,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[0] double -1 run data get entity @s Motion[0]
execute as @e[type=wither_skull,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[1] double -1 run data get entity @s Motion[1]
execute as @e[type=wither_skull,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] store result entity @s Motion[2] double -1 run data get entity @s Motion[2]

execute as @e[type=wither_skull,distance=1.5..3.5,tag=!from_aura,tag=!blocked_proj,nbt=!{inGround:1b}] run tag @s add blocked_proj

######## Wither Bolts ########
#### Effects
execute if entity @s[tag=!ravager_boss] as @e[type=armor_stand,distance=1.5..4,tag=wither_bolt] run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=!ravager_boss] as @e[type=armor_stand,distance=1.5..4,tag=wither_bolt] run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.6
execute as @s[tag=!ravager_boss] as @e[type=armor_stand,distance=1.5..4,tag=wither_bolt] at @s run particle minecraft:firework ~ ~ ~ .1 .1 .1 .3 30

#### Block
execute if entity @s[tag=!ravager_boss] if entity @e[type=armor_stand,distance=1.5..4,tag=wither_bolt] run clear @s minecraft:command_block{proj_aura:1b} 1

execute if entity @s[tag=!ravager_boss] as @e[type=armor_stand,distance=1.5..4,tag=wither_bolt] run kill @s


######## nether_proj ########
#### Effects
execute anchored eyes as @e[type=armor_stand,distance=2.5..5,tag=!from_aura,tag=nether_proj] run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 2
execute anchored eyes as @e[type=armor_stand,distance=2.5..5,tag=!from_aura,tag=nether_proj] run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1.6
execute anchored eyes as @e[type=armor_stand,distance=2.5..5,tag=!from_aura,tag=nether_proj] at @s run particle minecraft:firework ~ ~ ~ .1 .1 .1 .3 30

#### Block
execute anchored eyes if entity @e[type=armor_stand,distance=2.5..5,tag=!from_aura,tag=nether_proj] run clear @s minecraft:command_block{proj_aura:1b} 1

execute anchored eyes as @e[type=armor_stand,distance=2.5..5,tag=!from_aura,tag=nether_proj] run kill @s

#### Remove tags for multi-player compatibility ####
execute as @e[type=arrow,tag=from_aura] at @s unless entity @p[distance=..4.1] unless entity @e[type=zombie,tag=the_butcher,distance=..3.5] run tag @s remove from_aura
execute as @e[type=armor_stand,tag=nether_proj,tag=from_aura] at @s unless entity @p[distance=..4.1] unless entity @e[type=zombie,tag=the_butcher,distance=..3.5] run tag @s remove from_aura
execute as @e[type=arrow,tag=blocked_proj] at @s unless entity @p[distance=..4.1] unless entity @e[type=zombie,tag=the_butcher,distance=..3.5] run tag @s remove blocked_proj
