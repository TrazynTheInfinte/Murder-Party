# single-use regardless of outcome - breaks on the very first swing whether
# it finds the target or not, same as the Vigilante's knife
clear @s simpleknives:iron_knife{MurderPartyHitmanWeapon:1b}

execute if entity @e[tag=mp_alive,tag=mp_hitman_target,distance=..4] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s","color":"light_purple"},{"text":" completed their Hit!","color":"dark_red","bold":true}]
execute unless entity @e[tag=mp_alive,tag=mp_hitman_target,distance=..4] run tellraw @s [{"text":"[Murder Party] Wrong target - your knife shatters.","color":"red"}]

execute as @e[tag=mp_alive,tag=mp_hitman_target,distance=..4,limit=1] run function murder_party:weapon/hitman_eliminate_target
