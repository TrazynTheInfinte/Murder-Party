# single-use regardless of outcome - breaks on the very first swing whether
# it finds the Killer or not, so this clear happens unconditionally up front
clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}

execute if entity @e[tag=mp_alive,tag=mp_killer,distance=..4] run tellraw @s [{"text":"[Murder Party] Your knife found its mark.","color":"gold"}]
execute unless entity @e[tag=mp_alive,tag=mp_killer,distance=..4] run tellraw @s [{"text":"[Murder Party] Your knife shattered - wrong target.","color":"red"}]

execute as @e[tag=mp_alive,tag=mp_killer,distance=..4,limit=1] run function murder_party:weapon/vigilante_eliminate_killer
