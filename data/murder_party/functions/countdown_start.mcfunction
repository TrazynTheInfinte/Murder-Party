scoreboard players set #mp mp_countdown 5
scoreboard players set #mp mp_subtick 0
scoreboard players set #mp mp_state 2

title @a times 2 16 2
tellraw @a [{"text":"[Murder Party] Round starting...","color":"gray"}]

# defensive: a stray mp_killer/variant tag (e.g. from debug/set_role misuse
# before this round began) must not survive into the new round's assignment
tag @e remove mp_killer
tag @e remove mp_masked_killer
tag @e remove mp_saboteur
tag @e remove mp_killer_variant_chosen

tag @e[tag=mp_joined] add mp_alive
tag @e[tag=mp_joined] add mp_participant
tag @e[tag=mp_joined] remove mp_joined

# picked now (not at countdown's end) so the Killer has the full 5 seconds to
# privately choose their Killer Variant - see make_killer.mcfunction
execute as @e[tag=mp_alive,sort=random,limit=1] run function murder_party:make_killer
