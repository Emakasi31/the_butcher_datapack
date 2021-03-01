execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.231 0.137 0.051 1 ^ ^ ^0.25 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.231 0.137 0.051 1 ^ ^ ^0.5 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.231 0.137 0.051 1 ^ ^ ^0.75 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.231 0.137 0.051 1 ^ ^ ^1 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.231 0.137 0.051 1 ^ ^ ^1.25 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.231 0.137 0.051 1 ^ ^ ^1.5 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.231 0.137 0.051 1 ^0.25 ^ ^1.5 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.231 0.137 0.051 1 ^-0.25 ^ ^1.5 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_bar] run particle dust 0.231 0.137 0.051 1 ~ ~ ~ 0 0 0 0 1 normal

execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.678 0.239 0.067 1 ^-0.25 ^ ^1.25 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.678 0.239 0.067 1 ^-0.5 ^ ^1.5 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.678 0.239 0.067 1 ^-0.25 ^ ^1.75 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.678 0.239 0.067 1 ^0.25 ^ ^1.75 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.678 0.239 0.067 1 ^0.5 ^ ^1.5 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.678 0.239 0.067 1 ^0.25 ^ ^1.25 0 0 0 0 1 normal
#execute at @e[type=minecraft:area_effect_cloud,tag=bf_ore] run particle dust 0.678 0.239 0.067 1 ~ ~ ~ 0 0 0 0 1 normal

#execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^-0.25 ^ ^1.25 {Duration:1,Tags:["bf_ore"]}
#execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^-0.5 ^ ^1.5 {Duration:1,Tags:["bf_ore"]}
#execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^-0.25 ^ ^1.75 {Duration:1,Tags:["bf_ore"]}
#execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^0.25 ^ ^1.75 {Duration:1,Tags:["bf_ore"]}
#execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^0.5 ^ ^1.5 {Duration:1,Tags:["bf_ore"]}
#execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^0.25 ^ ^1.25 {Duration:1,Tags:["bf_ore"]}
#execute at @e[type=minecraft:area_effect_cloud,tag=bf_ore] run particle dust 0.678 0.239 0.067 1 ~ ~ ~ 0 0 0 0 1 normal

execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^-0.5 ^ ^1 {Duration:1,Tags:["bf_bl"]}
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.973 0.906 0.757 1 ^-0.5 ^ ^1.25 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^-0.75 ^ ^1.5 {Duration:1,Tags:["bf_bl"]}
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.973 0.906 0.757 1 ^-0.5 ^ ^1.75 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^-0.25 ^ ^2 {Duration:1,Tags:["bf_bl"]}
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^0.25 ^ ^2 {Duration:1,Tags:["bf_bl"]}
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.973 0.906 0.757 1 ^0.5 ^ ^1.75 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^0.75 ^ ^1.5 {Duration:1,Tags:["bf_bl"]}
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run particle dust 0.973 0.906 0.757 1 ^0.5 ^ ^1.25 0 0 0 0 1 normal
execute at @e[type=minecraft:area_effect_cloud,tag=bf_view] run summon area_effect_cloud ^0.5 ^ ^1 {Duration:1,Tags:["bf_bl"]}
execute at @e[type=minecraft:area_effect_cloud,tag=bf_bl] run particle dust 0.973 0.906 0.757 1 ~ ~ ~ 0 0 0 0 1 normal


execute as @e[type=minecraft:area_effect_cloud,tag=bf_view] at @s run tp @s ~ ~ ~ ~-1.8 ~
execute as @e[type=minecraft:area_effect_cloud,tag=bf_view] at @e[type=area_effect_cloud,tag=bf_facing,limit=1] run tp @s ~ ~ ~
