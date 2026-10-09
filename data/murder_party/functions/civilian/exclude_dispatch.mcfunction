# @s = the randomly-picked marker whose Role will NOT be offered this time
execute if entity @s[tag=mp_cr_vigilante] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_noisemaker_captain
execute if entity @s[tag=mp_cr_noisemaker] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_vigilante_captain
execute if entity @s[tag=mp_cr_captain] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_vigilante_noisemaker
