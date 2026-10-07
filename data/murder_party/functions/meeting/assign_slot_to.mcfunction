# @e[tag=mp_alive] iterating with "as" runs this once per living participant in
# turn, so this counter naturally hands out unique slot numbers 1, 2, 3, ...
scoreboard players add #mp mp_slot_counter 1
scoreboard players operation @s mp_vote_slot = #mp mp_slot_counter
scoreboard players set @s mp_vote 0
