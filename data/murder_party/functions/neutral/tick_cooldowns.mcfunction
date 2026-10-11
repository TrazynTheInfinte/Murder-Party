execute as @e[tag=mp_arsonist,tag=mp_alive] if score @s mp_arsonist_cooldown matches 1 run tellraw @s [{"text":"[Murder Party] Gasoline Can ready again.","color":"green"}]
execute as @e[tag=mp_arsonist,tag=mp_alive] if score @s mp_arsonist_cooldown matches 1.. run scoreboard players remove @s mp_arsonist_cooldown 1

execute as @e[tag=mp_hitman,tag=mp_alive] if score @s mp_hitman_knife_cooldown matches 1 run tellraw @s [{"text":"[Murder Party] Knife ready again.","color":"green"}]
execute as @e[tag=mp_hitman,tag=mp_alive] if score @s mp_hitman_knife_cooldown matches 1.. run scoreboard players remove @s mp_hitman_knife_cooldown 1
