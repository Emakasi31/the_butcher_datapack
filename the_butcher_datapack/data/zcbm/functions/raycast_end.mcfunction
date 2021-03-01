# Призвать динамит на конце луча если в руках предмет с тегом tnt:1
execute if entity @s[nbt={SelectedItem:{tag:{tnt:1}}}] align xyz positioned ~0.5 ~ ~0.5 run summon tnt

# Призвать зелье на конце луча если в руках предмет с тегом potion:1
execute if entity @s[nbt={SelectedItem:{tag:{potion:1}}}] run summon potion ^ ^ ^0.5 {Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}

# Призвать молнию на конце луча если в руках предмет с тегом lighting:1
execute if entity @s[nbt={SelectedItem:{tag:{lighting:1}}}] run summon minecraft:lightning_bolt

# Телепортировать сущность в конец луча если в руках предмет с тегом teleport:1
execute if entity @s[nbt={SelectedItem:{tag:{teleport:1}}}] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

# Сбросить счёт RC_raycast
scoreboard players set @s RC_raycast 0