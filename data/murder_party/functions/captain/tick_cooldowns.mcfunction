execute as @e[tag=mp_captain,tag=mp_alive] if score @s mp_captain_horn_cooldown matches 1.. run scoreboard players remove @s mp_captain_horn_cooldown 1
