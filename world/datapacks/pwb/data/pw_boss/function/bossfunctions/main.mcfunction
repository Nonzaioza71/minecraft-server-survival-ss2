##
 # main.mcfunction
 # 
 #
 # Created by .
##

effect give @s speed infinite 1 true

particle flame ~ ~1.75 ~ 0.25 0.25 0.25 0 3 force

execute if score @s pwboss.ability.summon.calc.cd matches 1.. run scoreboard players remove @s pwboss.ability.summon.calc.cd 1
execute unless score @s pwboss.ability.summon.calc.cd matches 1.. run summon vex ~ ~ ~ {Tags:["dark_soul"]}
execute unless score @s pwboss.ability.summon.calc.cd matches 1.. run summon vex ~ ~ ~ {Tags:["dark_soul"]}
execute unless score @s pwboss.ability.summon.calc.cd matches 1.. run summon vex ~ ~ ~ {Tags:["dark_soul"]}
execute unless score @s pwboss.ability.summon.calc.cd matches 1.. run summon vex ~ ~ ~ {Tags:["dark_soul"]}
execute unless score @s pwboss.ability.summon.calc.cd matches 1.. run scoreboard players operation @s pwboss.ability.summon.calc.cd = $pwboss.settings pwboss.ability.summon.set.cd

execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 1.. run scoreboard players remove @s pwboss.ability.arrow_vallay.calc.cd 1
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 1..100 if entity @a[distance=..12] at @a[distance=..12] run particle smoke ~ ~3 ~ 0.125 0.125 0.125 0 20 force
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 100 if entity @a[distance=..12] run playsound minecraft:pw.boss.arrow_vallay master @a ~ ~ ~ 2 1 1 
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 100 if entity @a[distance=..12] run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 2 1 1 
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 100 if entity @a[distance=..12] run tellraw @a ["", {"text": "[HALLOWEEN BOSS]", "color": "gold"}, {"text": " - The Pumkin Head", "color": "red"}, {"text": ": "}, {"text": "Watch your head! HAHAHAHA", "bold": true, "color": "dark_red"}]
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 100 if entity @a[distance=..12] at @a[distance=..12] run summon arrow ~ ~3 ~ {Motion:[0d, -5d, 0d]}
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 80 if entity @a[distance=..12] at @a[distance=..12] run summon arrow ~ ~3 ~ {Motion:[0d, -5d, 0d]}
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 60 if entity @a[distance=..12] at @a[distance=..12] run summon arrow ~ ~3 ~ {Motion:[0d, -5d, 0d]}
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 40 if entity @a[distance=..12] at @a[distance=..12] run summon arrow ~ ~3 ~ {Motion:[0d, -5d, 0d]}
execute if score @s pwboss.ability.arrow_vallay.calc.cd matches 20 if entity @a[distance=..12] at @a[distance=..12] run summon arrow ~ ~3 ~ {Motion:[0d, -5d, 0d]}
execute unless score @s pwboss.ability.arrow_vallay.calc.cd matches 1.. run scoreboard players operation @s pwboss.ability.arrow_vallay.calc.cd = $pwboss.settings pwboss.ability.arrow_vallay.set.cd


# fill ~ ~2 ~ ~ ~ ~ air destroy