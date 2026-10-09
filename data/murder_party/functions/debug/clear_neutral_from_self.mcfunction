# @s = whoever currently holds the Neutral Role (or doesn't - every line here
# is a safe no-op if it doesn't apply). Strips all three sub-types' kits so a
# fresh neutral/pick_type call starts clean.
clear @s simpleknives:iron_knife{MurderPartyJesterDecoy:1b}
clear @s simpleknives:iron_knife{MurderPartyHitmanWeapon:1b}
clear @s minecraft:glass_bottle{MurderPartyGasolineCan:1b}
clear @s minecraft:flint_and_steel{MurderPartyArsonistIgnite:1b}
scoreboard players set @s mp_arsonist_cooldown 0
tag @s remove mp_arsonist_ready
execute if entity @s[tag=mp_arsonist] run tag @e[tag=mp_doused] remove mp_doused
tag @s remove mp_doused

tag @s remove mp_neutral
tag @s remove mp_jester
tag @s remove mp_arsonist
tag @s remove mp_hitman

# only ever one Hitman target in a Round, so this is safe to run unconditionally
tag @e[tag=mp_hitman_target] remove mp_hitman_target
