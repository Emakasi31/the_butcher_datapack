execute as @e[tag=the_butcher,type=zombie] at @s run tag @e[type=spectral_arrow,distance=13..100] add wrong_arrow
execute as @p at @e[type=spectral_arrow,tag=wrong_arrow] run say Oh, so far
execute as @p at @e[type=spectral_arrow,tag=wrong_arrow] run particle minecraft:firework ~ ~ ~ .1 .1 .1 .3 30
execute as @e[type=spectral_arrow,tag=wrong_arrow] run kill @s
