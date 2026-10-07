clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
scoreboard players set @s mp_cooldown 0
tag @s remove mp_weapon_drawn

tag @s remove mp_alive
tag @s remove mp_killer
tag @s remove mp_spectating
tag @s remove mp_participant
team leave @s
gamemode survival @s
effect clear @s
effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation 1 255 true
execute at @e[tag=mp_lobby_point,limit=1] run tp @s ~ ~ ~
