say load
###scoreboards###
scoreboard objectives add hook_atk_cd dummy
scoreboard objectives add rot_atk_cd dummy
scoreboard objectives add dismember_atk_cd dummy
scoreboard objectives add butcher_health dummy 0
scoreboard objectives add pls_death_count deathCount 0


###bossbar###
bossbar add butcher {"text":"The Butcher","color":"dark_red","bold":true}
bossbar set minecraft:butcher style notched_10
bossbar set minecraft:butcher players @a[distance=0..60]
bossbar set minecraft:butcher color red
bossbar set minecraft:butcher max 500
