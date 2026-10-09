execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are not a participant in the active round.","color":"red"}]

# evict whoever currently holds the one Neutral slot, if it's someone else
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] unless entity @s[tag=mp_neutral] as @e[tag=mp_alive,tag=mp_neutral] run function murder_party:debug/clear_neutral_from_self

# if @s is currently the Killer, evict that first - can't be both at once
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_masked_killer] run clear @s id_mask:id_mask
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_saboteur] run clear @s create:linked_controller
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_killer] run scoreboard players set @s mp_cooldown 0
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] if entity @s[tag=mp_killer] run tag @s remove mp_weapon_drawn
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_masked_killer
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_saboteur
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run tag @s remove mp_killer_variant_chosen

# strip @s's own current Neutral state too, in case this is a re-roll
execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run function murder_party:debug/clear_neutral_from_self

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run function murder_party:neutral/pick_type
