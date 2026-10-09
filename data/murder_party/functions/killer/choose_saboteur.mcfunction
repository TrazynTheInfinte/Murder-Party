execute unless score #mp mp_state matches 2 run tellraw @s [{"text":"[Murder Party] Too late to choose.","color":"red"}]

execute if score #mp mp_state matches 2 if entity @s[tag=mp_killer] run tag @s remove mp_masked_killer
execute if score #mp mp_state matches 2 if entity @s[tag=mp_killer] run tag @s remove mp_slasher
execute if score #mp mp_state matches 2 if entity @s[tag=mp_killer] run tag @s add mp_saboteur
execute if score #mp mp_state matches 2 if entity @s[tag=mp_killer] run tag @s add mp_killer_variant_chosen
execute if score #mp mp_state matches 2 if entity @s[tag=mp_killer] run tellraw @s [{"text":"[Murder Party] You chose: Saboteur.","color":"dark_red"}]
