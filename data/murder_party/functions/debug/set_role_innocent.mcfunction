execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are not a participant in the active round.","color":"red"}]

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run scoreboard players set @s mp_cooldown 0
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_weapon_drawn
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are now an Innocent (debug).","color":"green"}]
