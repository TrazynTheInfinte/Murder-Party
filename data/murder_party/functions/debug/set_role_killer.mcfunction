execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are not a participant in the active round.","color":"red"}]

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] as @e[tag=mp_alive,tag=mp_killer] run tag @s remove mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s add mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are now the Killer (debug).","color":"dark_red"}]
