# snapshot the pre-toggle value first - every check below reads this copy, not
# the live objective, so flipping it partway through can't make a later check
# see the already-mutated state (the exact bug class fixed elsewhere this project)
scoreboard players operation #neutral_force_old mp_neutral_force = #mp mp_neutral_force

execute if score #neutral_force_old mp_neutral_force matches 1 run tellraw @s [{"text":"[Murder Party] Neutral force-enable at 3 players: OFF.","color":"gray"}]
execute if score #neutral_force_old mp_neutral_force matches 1 run scoreboard players set #mp mp_neutral_force 0

execute unless score #neutral_force_old mp_neutral_force matches 1 run tellraw @s [{"text":"[Murder Party] Neutral force-enable at 3 players: ON.","color":"gold"}]
execute unless score #neutral_force_old mp_neutral_force matches 1 run scoreboard players set #mp mp_neutral_force 1
