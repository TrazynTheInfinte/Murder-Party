execute if score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] A round is already in progress. Try again after it ends.","color":"red"}]
execute unless score #mp mp_state matches 1 if entity @s[tag=mp_joined] run tellraw @s [{"text":"[Murder Party] You're already queued.","color":"yellow"}]

execute unless score #mp mp_state matches 1 unless entity @s[tag=mp_joined] run tag @s add mp_joined
execute unless score #mp mp_state matches 1 unless entity @s[tag=mp_joined] run tellraw @s [{"text":"[Murder Party] Queued for the next round.","color":"gray"}]
