# Дать левитацию
execute as @a[scores={RightClick=1..},nbt={SelectedItem:{tag:{levitation:1}}}] run effect give @s levitation 5 0 true
# Призвать свинью
execute as @a[scores={RightClick=1..},nbt={SelectedItem:{tag:{sum_pig:1}}}] at @s run summon pig ~ ~ ~

# Сбросить счёт
scoreboard players set @a RightClick 0