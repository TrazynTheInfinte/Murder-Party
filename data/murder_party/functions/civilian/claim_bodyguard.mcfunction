tag @s add mp_bodyguard
tag @s add mp_civilian_role_chosen
tag @e[tag=mp_cr_opt,tag=mp_cr_bodyguard] add mp_cr_claimed
tellraw @s [{"text":"[Murder Party] You chose: Bodyguard.","color":"gold"}]
give @s minecraft:shield{MurderPartyGuardBadge:1b} 1
