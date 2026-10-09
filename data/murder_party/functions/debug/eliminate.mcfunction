execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]

execute if score #mp mp_state matches 1 if entity @s[tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if score #mp mp_state matches 1 if entity @s[tag=mp_masked_killer] run clear @s id_mask:id_mask
execute if score #mp mp_state matches 1 if entity @s[tag=mp_saboteur] run clear @s create:linked_controller
execute if score #mp mp_state matches 1 run clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
execute if score #mp mp_state matches 1 run clear @s minecraft:goat_horn{MurderPartyCaptainHorn:1b}
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain] run team leave @s
execute if score #mp mp_state matches 1 run tag @s remove mp_alive
execute if score #mp mp_state matches 1 run tag @s remove mp_killer
execute if score #mp mp_state matches 1 run tag @s remove mp_masked_killer
execute if score #mp mp_state matches 1 run tag @s remove mp_saboteur
execute if score #mp mp_state matches 1 run tag @s remove mp_killer_variant_chosen
execute if score #mp mp_state matches 1 run tag @s remove mp_vigilante
execute if score #mp mp_state matches 1 run tag @s remove mp_noisemaker
execute if score #mp mp_state matches 1 run tag @s remove mp_captain
execute if score #mp mp_state matches 1 run tag @s remove mp_civilian_role_chosen
execute if score #mp mp_state matches 1 run tag @s add mp_spectating
execute if score #mp mp_state matches 1 run gamemode spectator @s
execute if score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] (debug) You have been eliminated.","color":"red"}]
execute if score #mp mp_state matches 1 if entity @s[tag=mp_test_dummy] run kill @s
execute if score #mp mp_state matches 1 run function murder_party:check_win
