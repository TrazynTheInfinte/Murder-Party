# clearing happens per-branch below, not unconditionally up front like
# before - a knife that finds a Protected Killer survives on a cooldown
# instead of breaking (ADR 0025), unlike every other outcome here
execute if entity @e[tag=mp_alive,tag=mp_killer,tag=mp_bodyguard_target,distance=..4] run tellraw @s [{"text":"[Murder Party] Your target was protected!","color":"red"}]
execute as @e[tag=mp_alive,tag=mp_killer,tag=mp_bodyguard_target,distance=..4,limit=1] run tag @s remove mp_bodyguard_target
execute if entity @e[tag=mp_alive,tag=mp_killer,tag=mp_bodyguard_target,distance=..4] run scoreboard players set @s mp_vigilante_knife_cooldown 60

execute if entity @e[tag=mp_alive,tag=mp_killer,tag=!mp_bodyguard_target,distance=..4] run tellraw @s [{"text":"[Murder Party] Your knife found its mark.","color":"gold"}]
execute if entity @e[tag=mp_alive,tag=mp_killer,tag=!mp_bodyguard_target,distance=..4] run clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
execute as @e[tag=mp_alive,tag=mp_killer,tag=!mp_bodyguard_target,distance=..4,limit=1] run function murder_party:weapon/vigilante_eliminate_killer

execute unless entity @e[tag=mp_alive,tag=mp_killer,distance=..4] run tellraw @s [{"text":"[Murder Party] Your knife shattered - wrong target.","color":"red"}]
execute unless entity @e[tag=mp_alive,tag=mp_killer,distance=..4] run clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
