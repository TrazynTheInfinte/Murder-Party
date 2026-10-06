# vanilla has no permission check for who may run this; restrict by convention to an operator
kill @e[tag=mp_lobby_point]
summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_lobby_point"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
tellraw @s [{"text":"[Murder Party] Lobby point set.","color":"gray"}]
