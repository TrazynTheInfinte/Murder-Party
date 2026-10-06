execute if score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] A round is already in progress. Try again after it ends.","color":"red"}]
execute if score #mp mp_state matches 1 run return fail

execute if entity @s[tag=mp_joined] run tellraw @s [{"text":"[Murder Party] You're already queued.","color":"yellow"}]
execute if entity @s[tag=mp_joined] run return fail

tag @s add mp_joined
tellraw @s [{"text":"[Murder Party] Queued for the next round.","color":"gray"}]
