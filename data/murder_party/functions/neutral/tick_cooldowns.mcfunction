execute as @e[tag=mp_arsonist,tag=mp_alive] if score @s mp_arsonist_cooldown matches 1.. run scoreboard players remove @s mp_arsonist_cooldown 1
