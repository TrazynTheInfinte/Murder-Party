execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are not a participant in the active round.","color":"red"}]

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run function murder_party:debug/evict_current_killer

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s add mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run scoreboard players set @s mp_cooldown 60
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run give @s simpleknives:iron_knife{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],MurderPartyWeapon:1b} 1
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s add mp_saboteur
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s add mp_killer_variant_chosen
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run function murder_party:killer/give_kit
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are now the Saboteur (debug).","color":"dark_red"}]
