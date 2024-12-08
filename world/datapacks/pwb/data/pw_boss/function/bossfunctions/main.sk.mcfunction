execute unless score @s pwboss.sk.ability.darkness_blast.calc.cd matches -2147483648..2147483647 run scoreboard players operation @s pwboss.sk.ability.darkness_blast.calc.cd = $pwboss.settings pwboss.sk.ability.darkness_blast.set.cd

execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches 1.. run scoreboard players remove @s pwboss.sk.ability.darkness_blast.calc.cd 1
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches 220 run tp @a[distance=..32] @s
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches ..220 run effect give @s resistance 11 100 true
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches ..220 run particle portal ~ ~ ~ 0 0 0 10 100 force @a
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches ..220 run particle minecraft:flash ~ ~ ~ 3 3 3 0 1 force @a
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches ..220 run effect give @s slowness infinite 100 true
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches ..220 run effect give @s weakness infinite 100 true
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches 20 run summon fireball ~ ~3 ~ {ExplosionPower:20b, Motion:[0d, -10d, 0d]}
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches ..0 run effect clear @s resistance
execute if score @s pwboss.sk.ability.darkness_blast.calc.cd matches ..0 run scoreboard players operation @s pwboss.sk.ability.darkness_blast.calc.cd = $pwboss.settings pwboss.sk.ability.darkness_blast.set.cd