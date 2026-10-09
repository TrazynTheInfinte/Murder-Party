execute if score #mp mp_state matches 1 if entity @s[tag=mp_arsonist,tag=mp_alive] if score @s mp_arsonist_cooldown matches 1.. run tellraw @s [{"text":"[Murder Party] Gasoline Can not ready yet.","color":"red"}]
execute if score #mp mp_state matches 1 if entity @s[tag=mp_arsonist,tag=mp_alive] if score @s mp_arsonist_cooldown matches 0 run function murder_party:neutral/arsonist_douse_nearest
advancement revoke @s only murder_party:arsonist_douse_used
