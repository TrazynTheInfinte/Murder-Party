# @s = Arsonist, confirmed off cooldown by the caller. Dousing is silent to
# the victim (ADR 0018) - only the Arsonist ever sees any message here.
execute unless entity @e[tag=mp_alive,tag=!mp_arsonist,distance=..4] run tellraw @s [{"text":"[Murder Party] Nobody close enough to douse.","color":"red"}]

execute if entity @e[tag=mp_alive,tag=!mp_arsonist,tag=!mp_doused,distance=..4] run tellraw @s [{"text":"[Murder Party] Doused ","color":"light_purple"},{"selector":"@e[tag=mp_alive,tag=!mp_arsonist,tag=!mp_doused,distance=..4,sort=nearest,limit=1]","color":"gray"},{"text":".","color":"light_purple"}]
execute if entity @e[tag=mp_alive,tag=!mp_arsonist,tag=!mp_doused,distance=..4] run scoreboard players set @s mp_arsonist_cooldown 20
execute as @e[tag=mp_alive,tag=!mp_arsonist,tag=!mp_doused,distance=..4,sort=nearest,limit=1] run tag @s add mp_doused

execute if entity @e[tag=mp_alive,tag=!mp_arsonist,tag=mp_doused,distance=..4] unless entity @e[tag=mp_alive,tag=!mp_arsonist,tag=!mp_doused,distance=..4] run tellraw @s [{"text":"[Murder Party] Already doused.","color":"yellow"}]

function murder_party:neutral/arsonist_check_ignite_ready
