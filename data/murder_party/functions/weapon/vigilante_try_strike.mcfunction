# snapshot the single nearest Killer in range before checking status - every
# branch below looks at this exact same target entity, not a fresh re-query
# that could catch a different Killer if more than one were somehow in range
execute as @e[tag=mp_alive,tag=mp_killer,distance=..4,sort=nearest,limit=1] run tag @s add mp_vigilante_strike_target

# Protected: survives on a cooldown instead of breaking (ADR 0025)
execute if entity @e[tag=mp_vigilante_strike_target,tag=mp_bodyguard_target] run tellraw @s [{"text":"[Murder Party] Your target was protected!","color":"red"}]
execute as @e[tag=mp_vigilante_strike_target,tag=mp_bodyguard_target,limit=1] run tag @s remove mp_bodyguard_target
execute if entity @e[tag=mp_vigilante_strike_target,tag=mp_bodyguard_target] run scoreboard players set @s mp_vigilante_knife_cooldown 60

# snapshot whether this is a genuine hit on a still-vote-immune Slasher,
# before anything below removes either tag out from under this check -
# strips the Slasher's vote-immunity instead of eliminating them (the knife
# still breaks either way, user-requested change, 2026-10-11)
execute if entity @e[tag=mp_vigilante_strike_target,tag=mp_slasher,tag=mp_slasher_vote_immune,tag=!mp_bodyguard_target] run tag @s add mp_vigilante_hit_strips_immunity

execute if entity @s[tag=mp_vigilante_hit_strips_immunity] run tellraw @s [{"text":"[Murder Party] Your knife found its mark - the Slasher can be voted out now.","color":"gold"}]
execute if entity @s[tag=mp_vigilante_hit_strips_immunity] run clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
execute if entity @s[tag=mp_vigilante_hit_strips_immunity] as @e[tag=mp_vigilante_strike_target,limit=1] run tag @s remove mp_slasher_vote_immune

execute if entity @e[tag=mp_vigilante_strike_target,tag=!mp_bodyguard_target] unless entity @s[tag=mp_vigilante_hit_strips_immunity] run tellraw @s [{"text":"[Murder Party] Your knife found its mark.","color":"gold"}]
execute if entity @e[tag=mp_vigilante_strike_target,tag=!mp_bodyguard_target] unless entity @s[tag=mp_vigilante_hit_strips_immunity] run clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
execute unless entity @s[tag=mp_vigilante_hit_strips_immunity] as @e[tag=mp_vigilante_strike_target,tag=!mp_bodyguard_target,limit=1] run function murder_party:weapon/vigilante_eliminate_killer

execute unless entity @e[tag=mp_vigilante_strike_target] run tellraw @s [{"text":"[Murder Party] Your knife shattered - wrong target.","color":"red"}]
execute unless entity @e[tag=mp_vigilante_strike_target] run clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}

tag @e[tag=mp_vigilante_strike_target] remove mp_vigilante_strike_target
tag @s remove mp_vigilante_hit_strips_immunity
