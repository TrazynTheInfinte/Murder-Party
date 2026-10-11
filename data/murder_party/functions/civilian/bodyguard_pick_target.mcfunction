# single-use regardless of outcome - the shield is consumed the instant it's
# used, same shape as the Vigilante's and Hitman's knives. The pick is
# permanent - there's no retargeting once it lands on someone
clear @s minecraft:shield{MurderPartyGuardBadge:1b}

execute unless entity @e[tag=mp_alive,tag=!mp_bodyguard,distance=..4] run tellraw @s [{"text":"[Murder Party] Nobody close enough to protect.","color":"red"}]

execute if entity @e[tag=mp_alive,tag=!mp_bodyguard,distance=..4] run tellraw @s [{"text":"[Murder Party] You are now protecting ","color":"light_purple"},{"selector":"@e[tag=mp_alive,tag=!mp_bodyguard,distance=..4,sort=nearest,limit=1]","color":"gray"},{"text":".","color":"light_purple"}]
execute as @e[tag=mp_alive,tag=!mp_bodyguard,distance=..4,sort=nearest,limit=1] run tag @s add mp_bodyguard_target
