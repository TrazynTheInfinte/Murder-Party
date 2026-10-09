execute at @e[tag=mp_spawn_point,sort=random,limit=1] run tp @s ~ ~ ~
team join mp_hidden @s
gamemode adventure @s
effect clear @s
effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation 1 255 true
# Resistance IV (not V): keeps incoming damage just above zero so the Weapon's
# hit-detection advancement still fires; heal_participants erases the residual
# chip damage every tick so it can never actually kill anyone
effect give @s minecraft:resistance 1000000 3 true
