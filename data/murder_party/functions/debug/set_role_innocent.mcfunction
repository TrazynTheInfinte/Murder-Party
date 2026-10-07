execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are not a participant in the active round.","color":"red"}]

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are now an Innocent (debug).","color":"green"}]
