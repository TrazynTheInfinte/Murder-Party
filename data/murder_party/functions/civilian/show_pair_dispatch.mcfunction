# @e[tag=mp_cr_target] = the Innocent being offered a pair; @e[tag=mp_cr_shown]
# = the two Role markers randomly picked to show them (see offer_pair) - every
# unordered pair out of 4 Roles gets its own branch
execute if entity @e[tag=mp_cr_shown,tag=mp_cr_vigilante] if entity @e[tag=mp_cr_shown,tag=mp_cr_noisemaker] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_vigilante_noisemaker
execute if entity @e[tag=mp_cr_shown,tag=mp_cr_vigilante] if entity @e[tag=mp_cr_shown,tag=mp_cr_captain] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_vigilante_captain
execute if entity @e[tag=mp_cr_shown,tag=mp_cr_vigilante] if entity @e[tag=mp_cr_shown,tag=mp_cr_bodyguard] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_vigilante_bodyguard
execute if entity @e[tag=mp_cr_shown,tag=mp_cr_noisemaker] if entity @e[tag=mp_cr_shown,tag=mp_cr_captain] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_noisemaker_captain
execute if entity @e[tag=mp_cr_shown,tag=mp_cr_noisemaker] if entity @e[tag=mp_cr_shown,tag=mp_cr_bodyguard] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_noisemaker_bodyguard
execute if entity @e[tag=mp_cr_shown,tag=mp_cr_captain] if entity @e[tag=mp_cr_shown,tag=mp_cr_bodyguard] as @e[tag=mp_cr_target] run function murder_party:civilian/show_pair_captain_bodyguard
