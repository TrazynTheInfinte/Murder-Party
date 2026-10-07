scoreboard players set #tally mp_total_living 0
execute as @e[tag=mp_alive] run scoreboard players add #tally mp_total_living 1

scoreboard players set #slot1 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=1}] run scoreboard players add #slot1 mp_count 1
scoreboard players set #slot2 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=2}] run scoreboard players add #slot2 mp_count 1
scoreboard players set #slot3 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=3}] run scoreboard players add #slot3 mp_count 1
scoreboard players set #slot4 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=4}] run scoreboard players add #slot4 mp_count 1
scoreboard players set #slot5 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=5}] run scoreboard players add #slot5 mp_count 1
scoreboard players set #slot6 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=6}] run scoreboard players add #slot6 mp_count 1
scoreboard players set #slot7 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=7}] run scoreboard players add #slot7 mp_count 1
scoreboard players set #slot8 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=8}] run scoreboard players add #slot8 mp_count 1
scoreboard players set #slot9 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=9}] run scoreboard players add #slot9 mp_count 1
scoreboard players set #slot10 mp_count 0
execute as @e[tag=mp_alive,scores={mp_vote=10}] run scoreboard players add #slot10 mp_count 1

scoreboard players set #tally mp_max 0
scoreboard players set #tally mp_max_slot 0
scoreboard players operation #tally mp_is_new_max = #slot1 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot1 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 1
scoreboard players operation #tally mp_is_new_max = #slot2 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot2 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 2
scoreboard players operation #tally mp_is_new_max = #slot3 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot3 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 3
scoreboard players operation #tally mp_is_new_max = #slot4 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot4 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 4
scoreboard players operation #tally mp_is_new_max = #slot5 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot5 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 5
scoreboard players operation #tally mp_is_new_max = #slot6 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot6 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 6
scoreboard players operation #tally mp_is_new_max = #slot7 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot7 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 7
scoreboard players operation #tally mp_is_new_max = #slot8 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot8 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 8
scoreboard players operation #tally mp_is_new_max = #slot9 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot9 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 9
scoreboard players operation #tally mp_is_new_max = #slot10 mp_count
scoreboard players operation #tally mp_is_new_max -= #tally mp_max
execute if score #tally mp_is_new_max matches 1.. run scoreboard players operation #tally mp_max = #slot10 mp_count
execute if score #tally mp_is_new_max matches 1.. run scoreboard players set #tally mp_max_slot 10

scoreboard players set #tally mp_max_matches 0
execute if score #slot1 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot2 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot3 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot4 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot5 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot6 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot7 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot8 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot9 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1
execute if score #slot10 mp_count = #tally mp_max run scoreboard players add #tally mp_max_matches 1

scoreboard players operation #tally mp_max_x2 = #tally mp_max
scoreboard players operation #tally mp_max_x2 += #tally mp_max

execute if score #tally mp_max matches 0 run function murder_party:meeting/no_ejection
execute if score #tally mp_max matches 1.. if score #tally mp_max_matches matches 2.. run function murder_party:meeting/no_ejection
execute if score #tally mp_max matches 1.. if score #tally mp_max_matches matches 1 if score #tally mp_max_x2 > #tally mp_total_living run function murder_party:meeting/eject_winner
execute if score #tally mp_max matches 1.. if score #tally mp_max_matches matches 1 unless score #tally mp_max_x2 > #tally mp_total_living run function murder_party:meeting/no_ejection
