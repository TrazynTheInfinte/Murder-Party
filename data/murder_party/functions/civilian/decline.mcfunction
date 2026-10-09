execute unless score #mp mp_state matches 2 run tellraw @s [{"text":"[Murder Party] Too late to choose.","color":"red"}]
execute if score #mp mp_state matches 2 if entity @s[tag=mp_alive] unless entity @s[tag=mp_killer] if entity @s[tag=mp_civilian_role_chosen] run tellraw @s [{"text":"[Murder Party] You've already chosen.","color":"yellow"}]

execute if score #mp mp_state matches 2 if entity @s[tag=mp_alive] unless entity @s[tag=mp_killer] unless entity @s[tag=mp_civilian_role_chosen] run tellraw @s [{"text":"[Murder Party] You declined a Civilian Role.","color":"gray"}]
execute if score #mp mp_state matches 2 if entity @s[tag=mp_alive] unless entity @s[tag=mp_killer] unless entity @s[tag=mp_civilian_role_chosen] run tag @s add mp_civilian_role_chosen
