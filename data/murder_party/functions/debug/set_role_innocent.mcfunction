execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are not a participant in the active round.","color":"red"}]

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_killer] run clear @s minecraft:iron_sword{MurderPartyWeapon:1b}
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_masked_killer] run clear @s id_mask:id_mask
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_saboteur] run clear @s create:linked_controller
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_slasher] run clear @s id_mask:id_mask
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_slasher] run effect clear @s minecraft:glowing
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_slasher] run team join mp_hidden @s
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run scoreboard players set @s mp_cooldown 0
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_weapon_drawn
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_masked_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_saboteur
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_slasher
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_killer_variant_chosen
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are now an Innocent (debug).","color":"green"}]
