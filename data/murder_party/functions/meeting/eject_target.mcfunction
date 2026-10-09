execute if entity @s[tag=mp_killer] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s"},{"text":" was ejected. They were the Killer!","color":"dark_red","bold":true}]
execute if entity @s[tag=mp_neutral] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s"},{"text":" was ejected. They were a Neutral.","color":"light_purple"}]
execute unless entity @s[tag=mp_killer] unless entity @s[tag=mp_neutral] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s"},{"text":" was ejected. They were an Innocent.","color":"green"}]

# the Jester's whole goal is exactly this - a Personal Win, not a Round-ending
# one (ADR 0017)
execute if entity @s[tag=mp_jester] run tellraw @a [{"text":"[Murder Party] The Jester wanted this! ","color":"light_purple","bold":true},{"selector":"@s","color":"light_purple"},{"text":" achieves their Personal Win.","color":"gray"}]

# must run before mp_hitman_target is stripped below - see ADR 0019
function murder_party:neutral/convert_hitman_if_target_died

execute if entity @s[tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if entity @s[tag=mp_masked_killer] run clear @s id_mask:id_mask
execute if entity @s[tag=mp_saboteur] run clear @s create:linked_controller

clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
clear @s minecraft:goat_horn{MurderPartyCaptainHorn:1b}
execute if entity @s[tag=mp_captain] run team leave @s

clear @s simpleknives:iron_knife{MurderPartyJesterDecoy:1b}
clear @s simpleknives:iron_knife{MurderPartyHitmanWeapon:1b}
clear @s minecraft:glass_bottle{MurderPartyGasolineCan:1b}
clear @s minecraft:flint_and_steel{MurderPartyArsonistIgnite:1b}
# the Arsonist themselves being ejected ends their campaign - their Dousing
# marks on everyone else no longer matter once nobody can ignite them
execute if entity @s[tag=mp_arsonist] run tag @e[tag=mp_doused] remove mp_doused

tag @s remove mp_alive
tag @s remove mp_killer
tag @s remove mp_masked_killer
tag @s remove mp_saboteur
tag @s remove mp_killer_variant_chosen
tag @s remove mp_vigilante
tag @s remove mp_noisemaker
tag @s remove mp_captain
tag @s remove mp_civilian_role_chosen
tag @s remove mp_neutral
tag @s remove mp_jester
tag @s remove mp_arsonist
tag @s remove mp_hitman
tag @s remove mp_hitman_target
tag @s add mp_spectating
gamemode spectator @s
execute if entity @s[tag=mp_test_dummy] run kill @s

function murder_party:meeting/conclude
