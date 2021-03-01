

scoreboard players set @e[type=zombie,tag=the_butcher] dagon_ethl_cd 400

execute as @e[type=zombie,tag=the_butcher] run summon vex ~ ~ ~ {Silent:1b,Health:1f,Tags:["dagon"],HandItems:[{},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.follow_range,Base:70},{Name:generic.attack_damage,Base:1}]}
execute as @e[type=zombie,tag=the_butcher] run summon vex ~ ~ ~ {Silent:1b,Health:1f,Tags:["ethl"],HandItems:[{},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.follow_range,Base:70},{Name:generic.attack_damage,Base:1}]}
