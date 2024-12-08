##
 # tick.mcfunction
 # 
 #
 # Created by .
##
execute as @e[tag=pw_boss] run effect clear @s
execute as @e[tag=pw_boss] at @s run function pw_boss:bossfunctions/main


execute as @e[tag=dark_soul] at @s run effect give @s invisibility infinite 0 true
execute as @e[tag=dark_soul] at @s run particle soul ~ ~ ~ 0 0 0 0 3 force
execute as @e[tag=dark_soul] at @s run particle smoke ~ ~ ~ 0 0 0 0 3 force
execute as @e[tag=dark_soul] at @s if entity @e[type=player, distance=..3] run tp @e[tag=pw_boss, distance=..32] @s
execute as @e[tag=dark_soul] at @s if entity @e[type=player, distance=..3] run kill @e[tag=dark_soul, distance=..64]
execute as @e[tag=dark_soul] at @s unless entity @e[tag=pw_boss, distance=..32] run kill @s


execute as @a at @s run function pw_boss:effects/effects.1


execute as @e[tag=pw_boss_sk] run effect clear @s slowness
execute as @e[tag=pw_boss_sk] run effect clear @s slow_falling
execute as @e[tag=pw_boss_sk] run effect clear @s weakness
execute as @e[tag=pw_boss_sk] at @s run function pw_boss:bossfunctions/main.sk
execute as @e[tag=pw_boss_sk] at @s run fill ~1 ~3 ~1 ~-1 ~1 ~-1 air replace #mineable/hoe
execute as @e[tag=pw_boss_sk] at @s run fill ~1 ~3 ~1 ~-1 ~1 ~-1 air replace #mineable/pickaxe
execute as @e[tag=pw_boss_sk] at @s run fill ~1 ~3 ~1 ~-1 ~1 ~-1 air replace #mineable/shovel