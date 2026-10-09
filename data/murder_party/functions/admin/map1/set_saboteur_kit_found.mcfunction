kill @e[tag=mp_map1_saboteur_kit]
summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_map1_saboteur_kit"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
tag @s add mp_saboteur_kit_found
tellraw @s [{"text":"[Murder Party] Map 1 saboteur kit set.","color":"gray"}]
