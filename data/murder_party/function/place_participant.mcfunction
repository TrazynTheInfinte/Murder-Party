execute at @e[tag=mp_spawn_point,sort=random,limit=1] run tp @s ~ ~ ~
team join mp_hidden @s
gamemode survival @s
effect clear @s
effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation 1 255 true
