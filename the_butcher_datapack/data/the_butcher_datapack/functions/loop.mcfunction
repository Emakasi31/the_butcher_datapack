#main


###scoreboards??###
#scoreboard objectives add hook_atk_cd dummy
#scoreboard objectives add rot_atk_cd dummy
#scoreboard objectives add dismember_atk_cd dummy
#scoreboard objectives add pls_death_count deathCount 0
#scoreboard objectives add butcher_health dummy 0
#function the_butcher_datapack/load
#scoreboard objectives add butcher_hurt dummy 0
#scoreboard objectives add got_tranq dummy 0
#scoreboard objectives add blink_cd dummy 0
#scoreboard objectives add got_blink dummy 0
#scoreboard objectives add got_dagon_ethl dummy 0
#scoreboard objectives add dagon_ethl_cd dummy 0
scoreboard objectives add got_bf dummy 0
scoreboard objectives add bf_mode dummy 0
scoreboard objectives add bf_cd dummy 0
scoreboard objectives add bf_dmg_cd dummy 0


###bossbar###
execute store result bossbar minecraft:butcher value as @e[tag=the_butcher,type=zombie,limit=1] run data get entity @e[type=zombie,tag=the_butcher,limit=1] Health
#execute store result bossbar minecraft:butcher max as @e[tag=the_butcher,type=zombie,limit=1] run data get entity @e[type=zombie,tag=the_butcher,limit=1] Attributes[0].Base
execute unless entity @e[type=zombie,tag=the_butcher,limit=1] run bossbar set minecraft:butcher visible false
execute if entity @e[type=zombie,tag=the_butcher,limit=1] run bossbar set minecraft:butcher visible true

###void blocks drop###
execute as @e[type=minecraft:area_effect_cloud,tag=void_iron_bars,tag=!placed] at @s run function the_butcher_datapack:void_blocks/place_bars
execute as @e[type=minecraft:area_effect_cloud,tag=void_iron_bars,tag=placed] at @s unless block ~ ~ ~ minecraft:iron_bars run function the_butcher_datapack:void_blocks/remove_bars
#summon minecraft:area_effect_cloud ~ ~3 ~ {Tags:["void_iron_bars"],Duration:99999999}

###items###

execute store result score @e[type=minecraft:zombie,tag=the_butcher,limit=1] butcher_health run data get entity @e[type=zombie,tag=the_butcher,limit=1] Health
#execute if score @e[type=minecraft:zombie,tag=the_butcher,limit=1] butcher_health matches ..400 run say 1
#summon firework_rocket ^ ^ ^-2 {Silent:1b,LifeTime:2,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11250603]}]}}}}

#tranquil boots
execute if score @e[type=minecraft:zombie,tag=the_butcher,limit=1] butcher_health matches ..475 run scoreboard players set @e[type=minecraft:zombie,tag=the_butcher,limit=1] got_tranq 1
execute as @e[tag=the_butcher,type=zombie,scores={butcher_hurt=90..}] at @s run function the_butcher_datapack:butcher_items/tranquils
scoreboard players add @e[tag=the_butcher,type=zombie,scores={got_tranq=1}] butcher_hurt 1
execute as @e[type=zombie,tag=the_butcher] if entity @s[nbt={HurtTime:10s}] run scoreboard players set @e[type=minecraft:zombie,tag=the_butcher,limit=1] butcher_hurt 0

#blink
scoreboard players add @e[tag=the_butcher,type=zombie] blink_cd 0
scoreboard players remove @e[tag=the_butcher,type=zombie,scores={blink_cd=1..}] blink_cd 1
execute if score @e[type=minecraft:zombie,tag=the_butcher,limit=1] butcher_health matches ..425 run scoreboard players set @e[type=minecraft:zombie,tag=the_butcher,limit=1] got_blink 1

execute as @e[tag=the_butcher,type=zombie,scores={blink_cd=0,got_blink=1}] at @s if entity @p[distance=0..15] run function the_butcher_datapack:butcher_items/blink
execute as @e[tag=the_butcher,type=zombie,scores={blink_cd=1}] at @s run teleport @s ~ ~ ~ facing entity @p feet
execute as @e[type=zombie,tag=the_butcher,scores={blink_cd=0..60,butcher_hurt=1}] run scoreboard players set @e[type=minecraft:zombie,tag=the_butcher,limit=1] blink_cd 60
execute as @e[type=zombie,tag=the_butcher,scores={blink_cd=261}] at @e[type=minecraft:area_effect_cloud,tag=blink_cloud] run tp @s ~ ~ ~

#dagon and etherial
scoreboard players add @e[tag=the_butcher,type=zombie] dagon_ethl_cd 0
scoreboard players remove @e[tag=the_butcher,type=zombie,scores={dagon_ethl_cd=1..}] dagon_ethl_cd 1
execute if score @e[type=minecraft:zombie,tag=the_butcher,limit=1] butcher_health matches ..250 run scoreboard players set @e[type=minecraft:zombie,tag=the_butcher,limit=1] got_dagon_ethl 1

execute as @e[tag=the_butcher,type=zombie,scores={dagon_ethl_cd=0,got_dagon_ethl=1}] at @s if entity @p[distance=0..20] run function the_butcher_datapack:butcher_items/dagon_ethl
execute at @e[type=vex,tag=dagon] run particle dust 0.769 0.047 0.027 2 ~ ~0.5 ~ 0 0 0 0 1 normal
execute at @e[type=vex,tag=ethl] run particle dust 0.816 0.851 0.451 2 ~ ~0.5 ~ 0 0 0 0 1 normal
execute as @e[type=vex,tag=dagon] at @s if entity @p[distance=0..1.1] run function the_butcher_datapack:butcher_items/dagon
execute as @e[type=vex,tag=ethl] at @s if entity @p[distance=0..1.1] run function the_butcher_datapack:butcher_items/ethl

#bf
scoreboard players add @e[tag=the_butcher,type=zombie] got_bf 0
scoreboard players add @e[tag=the_butcher,type=zombie] bf_cd 0
scoreboard players add @e[type=zombie,tag=the_butcher] bf_mode 0
scoreboard players add @e[tag=the_butcher,type=zombie] bf_dmg_cd 0
scoreboard players remove @e[tag=the_butcher,type=zombie,scores={got_bf=1,bf_dmg_cd=1..}] bf_dmg_cd 1
execute if score @e[type=minecraft:zombie,tag=the_butcher,limit=1] butcher_health matches ..475 run scoreboard players set @e[type=minecraft:zombie,tag=the_butcher,limit=1] got_bf 1

execute as @e[tag=the_butcher,type=zombie] if entity @e[type=area_effect_cloud,tag=bf_view] run function the_butcher_datapack:butcher_items/bf_view
execute as @e[tag=the_butcher,type=zombie,scores={bf_mode=0,got_bf=1}] at @s if entity @p[distance=4..30] run function the_butcher_datapack:butcher_items/bf_summon
execute as @e[tag=the_butcher,type=zombie,scores={bf_cd=0,got_bf=1}] at @s if entity @p[distance=4..30] run function the_butcher_datapack:butcher_items/bf_reload
execute as @e[tag=the_butcher,type=zombie,scores={bf_mode=1,got_bf=1}] run function the_butcher_datapack:butcher_items/bf_1st_mode
execute as @e[tag=the_butcher,type=zombie,scores={bf_mode=2,got_bf=1}] run function the_butcher_datapack:butcher_items/bf_2nd_mode
execute as @e[tag=the_butcher,type=zombie,scores={bf_mode=3,got_bf=1}] run function the_butcher_datapack:butcher_items/bf_3rd_mode
execute as @e[type=minecraft:area_effect_cloud,tag=bf_bl] at @s if entity @p[distance=0..1,predicate=!the_butcher_datapack:sneaking] run function the_butcher_datapack:butcher_items/bf_dmg


###abilities###

#hook atk
scoreboard players add @e[tag=the_butcher,type=zombie] hook_atk_cd 0
scoreboard players remove @e[tag=the_butcher,type=zombie,scores={hook_atk_cd=1..}] hook_atk_cd 1

execute as @e[tag=the_butcher,type=zombie,scores={hook_atk_cd=0}] at @s if entity @p[distance=0..20] run function the_butcher_datapack:the_butcher/hook_atk
execute as @e[tag=the_butcher,type=zombie,scores={hook_atk_cd=72..80}] at @s run teleport @s ~ ~ ~ facing entity @p feet
execute as @e[tag=the_butcher,type=zombie,scores={hook_atk_cd=72..80}] at @s run function zcbm:raycast
execute as @e[tag=the_butcher,type=zombie,scores={hook_atk_cd=73}] at @e[type=minecraft:area_effect_cloud,tag=dead_mark] if entity @e[type=player,distance=0..2,tag=meat] run execute as @e[type=player,tag=meat] at @e[type=zombie,tag=the_butcher] run tp @s ^ ^1.3 ^1.3
execute as @e[tag=the_butcher,type=zombie,scores={hook_atk_cd=70}] run execute as @e[type=player,tag=meat] at @e[type=zombie,tag=the_butcher] run tag @a remove meat


#rot atk
scoreboard players add @e[tag=the_butcher,type=zombie] rot_atk_cd 0
scoreboard players remove @e[tag=the_butcher,type=zombie,scores={rot_atk_cd=1..}] rot_atk_cd 1

execute as @e[tag=the_butcher,type=zombie,scores={rot_atk_cd=0}] at @s if entity @e[distance=0..3,type=player] run function the_butcher_datapack:the_butcher/rot_atk

#rot_atk_for_mobs
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..3,type=iron_golem] run function the_butcher_datapack:the_butcher/rot_atk_for_mobs
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..3,type=iron_golem] run kill @e[distance=0..3,type=iron_golem]
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..3,type=villager] run function the_butcher_datapack:the_butcher/rot_atk_for_mobs
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..3,type=villager] run kill @e[distance=0..3,type=villager]
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..3,type=wolf] run function the_butcher_datapack:the_butcher/rot_atk_for_mobs
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..3,type=wolf] run kill @e[distance=0..3,type=wolf]

#flesh heap
#scoreboard players add @e[tag=the_butcher,type=zombie] flesh_heap_count 0
execute if entity @e[type=zombie,tag=the_butcher,limit=1] run function the_butcher_datapack:the_butcher/flesh_heap
execute unless entity @e[type=zombie,tag=the_butcher,limit=1] run scoreboard objectives remove pls_death_count
execute if entity @e[type=zombie,tag=the_butcher,limit=1] run scoreboard objectives add pls_death_count deathCount 0
execute as @e[type=zombie,tag=the_butcher] if entity @a[scores={pls_death_count=0}] run attribute @e[type=zombie,tag=the_butcher,limit=1] minecraft:generic.max_health base set 500
execute as @e[type=zombie,tag=the_butcher] if entity @a[scores={pls_death_count=0}] run bossbar set minecraft:butcher max 500
execute as @e[type=zombie,tag=the_butcher] if entity @a[scores={pls_death_count=0}] run bossbar set minecraft:butcher style notched_10

#dismember
scoreboard players add @e[tag=the_butcher,type=zombie] dismember_atk_cd 0
scoreboard players remove @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=1..}] dismember_atk_cd 1

execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=0}] at @s if entity @p[distance=0..3] run function the_butcher_datapack:the_butcher/dismember_atk
execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=230}] at @s run function the_butcher_datapack:the_butcher/stun
execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=210}] at @s run function the_butcher_datapack:the_butcher/stun
execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=190}] at @s run function the_butcher_datapack:the_butcher/stun
execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=170}] at @s run function the_butcher_datapack:the_butcher/stun

execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=210}] at @s run effect give @e[tag=the_butcher] instant_damage 1 4 true
execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=190}] at @s run effect give @e[tag=the_butcher] instant_damage 1 4 true
execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=170}] at @s run effect give @e[tag=the_butcher] instant_damage 1 4 true
execute as @e[tag=the_butcher,type=zombie,scores={dismember_atk_cd=169}] at @s run tag @a remove stunned


###arrow def###
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[type=arrow,distance=13..100] run function the_butcher_datapack:the_butcher/wrong_arr
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[type=spectral_arrow,distance=13..100] run function the_butcher_datapack:the_butcher/wrong_spectral_arr
execute as @e[tag=the_butcher,type=zombie] at @s positioned ~ ~1 ~ if entity @e[type=trident,distance=0..10] run function the_butcher_datapack:the_butcher/proj_aura

###def###
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..30,type=snow_golem] run say bloody creeps!
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..30,type=snow_golem] run kill @e[distance=0..30,type=snow_golem]
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..6,type=minecraft:tnt_minecart] run say bloody creeps!
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..6,type=minecraft:tnt_minecart] run kill @e[distance=0..6,type=minecraft:tnt_minecart]
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..10,type=minecraft:end_crystal] run say bloody creeps!
execute as @e[tag=the_butcher,type=zombie] at @s if entity @e[distance=0..10,type=minecraft:end_crystal] run kill @e[distance=0..10,type=minecraft:end_crystal]
execute as @e[type=minecraft:zombie,tag=the_butcher] at @s unless block ~1 ~1 ~ minecraft:air unless block ~-1 ~1 ~ minecraft:air unless block ~ ~1 ~1 minecraft:air unless block ~ ~1 ~-1 minecraft:air run tp @e[type=minecraft:zombie,tag=the_butcher,limit=1] @p

###summon###
execute as @e[type=item,nbt={Item:{id:"minecraft:chain",Count:1b}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_axe",Count:1b}},sort=nearest,limit=1,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:shulker_shell",Count:1b}},sort=nearest,limit=1,distance=0..1] at @s if block ~ ~-1 ~ minecraft:netherite_block if block ~ ~ ~ minecraft:stonecutter if block ~2 ~-1 ~ minecraft:red_nether_brick_slab if block ~2 ~-1 ~1 minecraft:red_nether_brick_slab if block ~2 ~-1 ~-1 minecraft:red_nether_brick_slab if block ~-2 ~-1 ~ minecraft:red_nether_brick_slab if block ~-2 ~-1 ~1 minecraft:red_nether_brick_slab if block ~-2 ~-1 ~-1 minecraft:red_nether_brick_slab if block ~ ~-1 ~2 minecraft:red_nether_brick_slab if block ~1 ~-1 ~2 minecraft:red_nether_brick_slab if block ~-1 ~-1 ~2 minecraft:red_nether_brick_slab if block ~ ~-1 ~-2 minecraft:red_nether_brick_slab if block ~1 ~-1 ~-2 minecraft:red_nether_brick_slab if block ~-1 ~-1 ~-2 minecraft:red_nether_brick_slab if block ~1 ~-1 ~ minecraft:nether_wart_block if block ~-1 ~-1 ~ minecraft:nether_wart_block if block ~ ~-1 ~1 minecraft:nether_wart_block if block ~ ~-1 ~-1 minecraft:nether_wart_block if block ~1 ~-1 ~1 minecraft:nether_wart_block if block ~1 ~-1 ~-1 minecraft:nether_wart_block if block ~-1 ~-1 ~1 minecraft:nether_wart_block if block ~-1 ~-1 ~-1 minecraft:nether_wart_block if block ~2 ~-1 ~2 minecraft:red_nether_brick_stairs if block ~2 ~-1 ~3 minecraft:red_nether_brick_stairs if block ~3 ~-1 ~2 minecraft:red_nether_brick_stairs if block ~3 ~-1 ~3 minecraft:red_nether_brick_stairs if block ~-2 ~-1 ~2 minecraft:red_nether_brick_stairs if block ~-2 ~-1 ~3 minecraft:red_nether_brick_stairs if block ~-3 ~-1 ~2 minecraft:red_nether_brick_stairs if block ~-3 ~-1 ~3 minecraft:red_nether_brick_stairs if block ~2 ~-1 ~-2 minecraft:red_nether_brick_stairs if block ~2 ~-1 ~-3 minecraft:red_nether_brick_stairs if block ~3 ~-1 ~-2 minecraft:red_nether_brick_stairs if block ~3 ~-1 ~-3 minecraft:red_nether_brick_stairs if block ~-2 ~-1 ~-2 minecraft:red_nether_brick_stairs if block ~-2 ~-1 ~-3 minecraft:red_nether_brick_stairs if block ~-3 ~-1 ~-2 minecraft:red_nether_brick_stairs if block ~-3 ~-1 ~-3 minecraft:red_nether_brick_stairs if entity @e[type=minecraft:hoglin,distance=0..2] run function the_butcher_datapack:the_butcher/summon
