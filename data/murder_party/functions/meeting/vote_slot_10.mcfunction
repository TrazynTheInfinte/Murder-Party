execute if score #mp mp_state matches 4 if entity @s[tag=mp_alive] if score @s mp_vote_slot matches 10 run tellraw @s [{"text":"[Murder Party] You can't vote for yourself.","color":"red"}]
execute if score #mp mp_state matches 4 if entity @s[tag=mp_alive] unless score @s mp_vote_slot matches 10 if entity @s[tag=mp_has_voted] run tellraw @s [{"text":"[Murder Party] You've already voted.","color":"yellow"}]
execute if score #mp mp_state matches 4 if entity @s[tag=mp_alive] unless score @s mp_vote_slot matches 10 unless entity @s[tag=mp_has_voted] run tellraw @s [{"text":"[Murder Party] Vote cast.","color":"gray"}]
execute if score #mp mp_state matches 4 if entity @s[tag=mp_alive] unless score @s mp_vote_slot matches 10 unless entity @s[tag=mp_has_voted] run scoreboard players set @s mp_vote 10
execute if score #mp mp_state matches 4 if entity @s[tag=mp_alive] unless score @s mp_vote_slot matches 10 unless entity @s[tag=mp_has_voted] run tag @s add mp_has_voted
