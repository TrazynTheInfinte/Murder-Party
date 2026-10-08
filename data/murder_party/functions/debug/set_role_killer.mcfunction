execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are not a participant in the active round.","color":"red"}]

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] as @e[tag=mp_alive,tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] as @e[tag=mp_alive,tag=mp_masked_killer] run clear @s id_mask:id_mask
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] as @e[tag=mp_alive,tag=mp_killer] run scoreboard players set @s mp_cooldown 0
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] as @e[tag=mp_alive,tag=mp_killer] run tag @s remove mp_weapon_drawn
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] as @e[tag=mp_alive,tag=mp_killer] run tag @s remove mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] as @e[tag=mp_alive,tag=mp_masked_killer] run tag @s remove mp_masked_killer

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s add mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run scoreboard players set @s mp_cooldown 60
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run give @s simpleknives:iron_knife{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],MurderPartyWeapon:1b} 1
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if score #mp mp_masked_killer_enabled matches 1 run tag @s add mp_masked_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if score #mp mp_masked_killer_enabled matches 1 run tellraw @s [{"text":"[Murder Party] You are now the Masked Killer (debug).","color":"dark_red"}]
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] unless score #mp mp_masked_killer_enabled matches 1 run tellraw @s [{"text":"[Murder Party] You are now the Killer (debug).","color":"dark_red"}]
