execute as @e[tag=mp_alive,tag=mp_killer] run tag @s remove mp_killer
tag @s add mp_killer
tellraw @s [{"text":"[Murder Party] You are now the Killer (debug).","color":"dark_red"}]
