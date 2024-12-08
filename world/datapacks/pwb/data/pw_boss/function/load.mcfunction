##
 # load.mcfunction
 # 
 #
 # Created by .
##
tellraw @a ["", {"text": "[PWEvent]", "color": "gold"}, {"text": "Happy Halloween...", "color": "red"}]

scoreboard objectives add pwboss.ability.summon.calc.cd dummy
scoreboard objectives add pwboss.ability.summon.set.cd dummy

scoreboard objectives add pwboss.ability.arrow_vallay.calc.cd dummy
scoreboard objectives add pwboss.ability.arrow_vallay.set.cd dummy


execute unless score $pwboss.settings pwboss.ability.summon.set.cd matches -2147483648..2147483647 run scoreboard players set $pwboss.settings pwboss.ability.summon.set.cd 280
execute unless score $pwboss.settings pwboss.ability.arrow_vallay.set.cd matches -2147483648..2147483647 run scoreboard players set $pwboss.settings pwboss.ability.arrow_vallay.set.cd 600

execute if score $pwboss.settings pwboss.ability.summon.set.cd matches ..0 run scoreboard players set $pwboss.settings pwboss.ability.summon.set.cd 280
execute if score $pwboss.settings pwboss.ability.arrow_vallay.set.cd matches ..0 run scoreboard players set $pwboss.settings pwboss.ability.arrow_vallay.set.cd 600


scoreboard objectives add pwboss.sk.ability.darkness_blast.calc.cd dummy
scoreboard objectives add pwboss.sk.ability.darkness_blast.calc.charge dummy
scoreboard objectives add pwboss.sk.ability.darkness_blast.set.cd dummy


execute unless score $pwboss.settings pwboss.sk.ability.darkness_blast.set.cd matches -2147483648..2147483647 run scoreboard players set $pwboss.settings pwboss.sk.ability.darkness_blast.set.cd 1200
execute if score $pwboss.settings pwboss.sk.ability.darkness_blast.set.cd matches ..0 run scoreboard players set $pwboss.settings pwboss.sk.ability.darkness_blast.set.cd 1200