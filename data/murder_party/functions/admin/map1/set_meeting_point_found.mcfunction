kill @e[tag=mp_map1_meeting_point]
summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_map1_meeting_point"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
tag @s add mp_meeting_point_found
tellraw @s [{"text":"[Murder Party] Map 1 meeting point set.","color":"gray"}]
