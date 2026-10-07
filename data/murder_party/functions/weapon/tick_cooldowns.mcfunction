execute as @e[tag=mp_killer,tag=mp_alive] if score @s mp_cooldown matches 1.. run scoreboard players remove @s mp_cooldown 1
