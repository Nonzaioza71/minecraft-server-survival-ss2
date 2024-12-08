##
 # effect.1.mcfunction
 # 
 #
 # Created by .
##
execute as @a[tag=halloween_foot_effect] at @s run particle soul ~ ~ ~ 0.125 0.25 0.125 0.0225 1 force @a
execute as @a[tag=halloween_foot_effect] at @s run particle soul_fire_flame ~ ~ ~ 0.125 0 0.125 0 1 force @a

execute as @a[tag=backroom_master] at @s run particle smoke ~ ~ ~ 0.125 0.25 0.125 0.0225 1 force @a
execute as @a[tag=backroom_master] at @s run particle flame ~ ~ ~ 0.125 0 0.125 0 1 force @a

execute as @a[tag=melody_1] at @s run particle minecraft:note ~ ~ ~ 0.5 0 0.5 1 1 force @a
execute as @a[tag=melody_1] at @s run particle dust{color:[255.0,255.0,255.0],scale:1} ~ ~ ~ 0.25 0 0.25 0 3 force @a

execute as @e[tag=halloween_ring_r] at @p[tag=champion_halloween] run tp @s ~ ~2.75 ~
execute as @e[tag=halloween_ring_r] at @s run tp @s ~ ~ ~ ~-5.625 ~
execute as @e[tag=halloween_ring_r] at @s run particle minecraft:soul ^ ^ ^0.7 0 0 0 0 3 force @a
execute as @e[tag=halloween_ring_r] at @s run particle minecraft:smoke ^ ^ ^0.7 0 0 0 0 3 force @a
execute as @e[tag=halloween_ring_r] at @s unless entity @p[distance=..3, tag=champion_halloween] run kill @s
execute as @a[tag=champion_halloween] at @s unless entity @e[tag=halloween_ring_r,distance=..3] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,NoGravity:true,Small:true,Marker:true,Tags:["halloween_ring_r"]}