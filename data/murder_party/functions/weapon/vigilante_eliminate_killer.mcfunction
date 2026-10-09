clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if entity @s[tag=mp_masked_killer] run clear @s id_mask:id_mask
execute if entity @s[tag=mp_saboteur] run clear @s create:linked_controller

tag @s remove mp_alive
tag @s remove mp_killer
tag @s remove mp_masked_killer
tag @s remove mp_saboteur
tag @s add mp_spectating
gamemode spectator @s
tellraw @s [{"text":"[Murder Party] You were eliminated by the Vigilante.","color":"red"}]

execute if entity @s[tag=mp_test_dummy] run kill @s

function murder_party:check_win
