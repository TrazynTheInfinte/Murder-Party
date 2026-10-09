tag @s add mp_vigilante
tag @s add mp_civilian_role_chosen
tag @e[tag=mp_cr_opt,tag=mp_cr_vigilante] add mp_cr_claimed
tellraw @s [{"text":"[Murder Party] You chose: Vigilante.","color":"gold"}]
give @s simpleknives:iron_knife{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],MurderPartyVigilanteWeapon:1b} 1
