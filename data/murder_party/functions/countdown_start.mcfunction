scoreboard players set #mp mp_countdown 5
scoreboard players set #mp mp_subtick 0
scoreboard players set #mp mp_state 2

# the ready check is done its job - clear it so the next lobby starts fresh
scoreboard players set #mp mp_ready_phase 0
tag @e remove mp_ready

title @a times 2 16 2
tellraw @a [{"text":"[Murder Party] Round starting...","color":"gray"}]

# defensive: a stray mp_killer/variant tag (e.g. from debug/set_role misuse
# before this round began) must not survive into the new round's assignment
tag @e remove mp_killer
tag @e remove mp_masked_killer
tag @e remove mp_saboteur
tag @e remove mp_slasher
tag @e remove mp_killer_variant_chosen
tag @e remove mp_neutral
tag @e remove mp_jester
tag @e remove mp_arsonist
tag @e remove mp_hitman
tag @e remove mp_hitman_target

tag @e[tag=mp_joined] add mp_alive
tag @e[tag=mp_joined] add mp_participant
tag @e[tag=mp_joined] remove mp_joined

# picked now (not at countdown's end) so the Killer has the full 5 seconds to
# privately choose their Killer Variant - see make_killer.mcfunction
execute as @e[tag=mp_alive,sort=random,limit=1] run function murder_party:make_killer

# a Neutral (if any) is picked next, before Civilian Roles are offered, since
# a Neutral is never eligible for one - see neutral/assign.mcfunction
function murder_party:neutral/assign

# reused per-Innocent via sort=random (re-shuffles on every evaluation) rather
# than summoned fresh each time - see civilian/offer_pair.mcfunction
kill @e[tag=mp_cr_opt]
summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_cr_opt","mp_cr_vigilante"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_cr_opt","mp_cr_noisemaker"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_cr_opt","mp_cr_captain"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}

execute as @e[tag=mp_alive,tag=!mp_killer,tag=!mp_neutral] run function murder_party:civilian/offer_pair
