# evicts whoever currently holds mp_killer (any Variant) - safe no-op if
# nobody does. Shared by the set_role_killer_* debug commands before granting
# @s the Killer role, since only one Killer can exist at a time.
execute as @e[tag=mp_alive,tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute as @e[tag=mp_alive,tag=mp_killer] run clear @s minecraft:iron_sword{MurderPartyWeapon:1b}
execute as @e[tag=mp_alive,tag=mp_masked_killer] run clear @s id_mask:id_mask
execute as @e[tag=mp_alive,tag=mp_saboteur] run clear @s create:linked_controller
execute as @e[tag=mp_alive,tag=mp_slasher] run clear @s id_mask:id_mask
execute as @e[tag=mp_alive,tag=mp_slasher] run effect clear @s minecraft:glowing
execute as @e[tag=mp_alive,tag=mp_slasher] run team join mp_hidden @s
execute as @e[tag=mp_alive,tag=mp_killer] run scoreboard players set @s mp_cooldown 0
execute as @e[tag=mp_alive,tag=mp_killer] run tag @s remove mp_weapon_drawn
execute as @e[tag=mp_alive,tag=mp_killer] run tag @s remove mp_killer
execute as @e[tag=mp_alive,tag=mp_masked_killer] run tag @s remove mp_masked_killer
execute as @e[tag=mp_alive,tag=mp_saboteur] run tag @s remove mp_saboteur
execute as @e[tag=mp_alive,tag=mp_slasher] run tag @s remove mp_slasher
execute as @e[tag=mp_alive,tag=mp_killer] run tag @s remove mp_killer_variant_chosen
