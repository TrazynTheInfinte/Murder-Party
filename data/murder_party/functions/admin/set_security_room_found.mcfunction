item modify block ~ ~ ~ container.0 murder_party:tag_security_monitor

kill @e[tag=mp_security_room]
summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_security_room"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
tag @s add mp_security_room_found
tellraw @s [{"text":"[Murder Party] Security room set.","color":"gray"}]
