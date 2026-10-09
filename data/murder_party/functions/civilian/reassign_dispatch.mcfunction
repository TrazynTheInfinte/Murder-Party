# @s = the randomly-picked still-unclaimed marker
execute if entity @s[tag=mp_cr_vigilante] as @e[tag=mp_cr_target] run function murder_party:civilian/claim_vigilante
execute if entity @s[tag=mp_cr_noisemaker] as @e[tag=mp_cr_target] run function murder_party:civilian/claim_noisemaker
execute if entity @s[tag=mp_cr_captain] as @e[tag=mp_cr_target] run function murder_party:civilian/claim_captain
