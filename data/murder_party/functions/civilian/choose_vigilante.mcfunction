execute unless score #mp mp_state matches 2 run tellraw @s [{"text":"[Murder Party] Too late to choose.","color":"red"}]
execute if score #mp mp_state matches 2 if entity @s[tag=mp_alive] unless entity @s[tag=mp_killer] if entity @s[tag=mp_civilian_role_chosen] run tellraw @s [{"text":"[Murder Party] You've already chosen.","color":"yellow"}]

execute if score #mp mp_state matches 2 if entity @s[tag=mp_alive] unless entity @s[tag=mp_killer] unless entity @s[tag=mp_civilian_role_chosen] unless entity @e[tag=mp_cr_opt,tag=mp_cr_vigilante,tag=mp_cr_claimed] run function murder_party:civilian/claim_vigilante
execute if score #mp mp_state matches 2 if entity @s[tag=mp_alive] unless entity @s[tag=mp_killer] unless entity @s[tag=mp_civilian_role_chosen] if entity @e[tag=mp_cr_opt,tag=mp_cr_vigilante,tag=mp_cr_claimed] run function murder_party:civilian/reassign
