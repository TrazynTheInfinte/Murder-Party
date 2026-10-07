execute if score #mp mp_state matches 4 if entity @s[tag=mp_alive] if entity @s[tag=mp_has_voted] run tellraw @s [{"text":"[Murder Party] You've already voted.","color":"yellow"}]
execute if score #mp mp_state matches 4 if entity @s[tag=mp_alive] unless entity @s[tag=mp_has_voted] run tellraw @s [{"text":"[Murder Party] Skipped.","color":"gray"}]
execute if score #mp mp_state matches 4 if entity @s[tag=mp_alive] unless entity @s[tag=mp_has_voted] run tag @s add mp_has_voted
