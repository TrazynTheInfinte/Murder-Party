execute unless score #mp mp_ready_phase matches 1 run tellraw @s [{"text":"[Murder Party] No ready check in progress.","color":"red"}]
execute if score #mp mp_ready_phase matches 1 if entity @s[tag=mp_ready] run tellraw @s [{"text":"[Murder Party] You're already ready.","color":"yellow"}]

execute if score #mp mp_ready_phase matches 1 unless entity @s[tag=mp_ready] run tellraw @a[tag=mp_joined] [{"text":"[Murder Party] ","color":"gray"},{"selector":"@s"},{"text":" is ready.","color":"green"}]
execute if score #mp mp_ready_phase matches 1 unless entity @s[tag=mp_ready] run tag @s add mp_ready
