execute if entity @s[tag=mp_killer] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s"},{"text":" was ejected. They were the Killer!","color":"dark_red","bold":true}]
execute unless entity @s[tag=mp_killer] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s"},{"text":" was ejected. They were an Innocent.","color":"green"}]

execute if entity @s[tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if entity @s[tag=mp_masked_killer] run clear @s id_mask:id_mask
execute if entity @s[tag=mp_saboteur] run clear @s create:linked_controller

tag @s remove mp_alive
tag @s remove mp_killer
tag @s remove mp_masked_killer
tag @s remove mp_saboteur
tag @s remove mp_killer_variant_chosen
tag @s add mp_spectating
gamemode spectator @s
execute if entity @s[tag=mp_test_dummy] run kill @s

function murder_party:meeting/conclude
