execute as @e[tag=mp_vigilante,tag=mp_alive] if score @s mp_vigilante_knife_cooldown matches 1 run tellraw @s [{"text":"[Murder Party] Knife ready again.","color":"green"}]
execute as @e[tag=mp_vigilante,tag=mp_alive] if score @s mp_vigilante_knife_cooldown matches 1.. run scoreboard players remove @s mp_vigilante_knife_cooldown 1
