scoreboard players set #total_living mp_tally 0
execute as @e[tag=mp_alive] run scoreboard players add #total_living mp_tally 1

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

scoreboard players set #max mp_tally 0
scoreboard players set #max_slot mp_tally 0
scoreboard players operation #is_new_max mp_tally = #slot1 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot1 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 1
scoreboard players operation #is_new_max mp_tally = #slot2 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot2 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 2
scoreboard players operation #is_new_max mp_tally = #slot3 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot3 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 3
scoreboard players operation #is_new_max mp_tally = #slot4 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot4 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 4
scoreboard players operation #is_new_max mp_tally = #slot5 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot5 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 5
scoreboard players operation #is_new_max mp_tally = #slot6 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot6 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 6
scoreboard players operation #is_new_max mp_tally = #slot7 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot7 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 7
scoreboard players operation #is_new_max mp_tally = #slot8 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot8 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 8
scoreboard players operation #is_new_max mp_tally = #slot9 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot9 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 9
scoreboard players operation #is_new_max mp_tally = #slot10 mp_count
scoreboard players operation #is_new_max mp_tally -= #max mp_tally
execute if score #is_new_max mp_tally matches 1.. run scoreboard players operation #max mp_tally = #slot10 mp_count
execute if score #is_new_max mp_tally matches 1.. run scoreboard players set #max_slot mp_tally 10

scoreboard players set #max_matches mp_tally 0
execute if score #slot1 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot2 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot3 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot4 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot5 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot6 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot7 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot8 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot9 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1
execute if score #slot10 mp_count = #max mp_tally run scoreboard players add #max_matches mp_tally 1

scoreboard players operation #max_x2 mp_tally = #max mp_tally
scoreboard players operation #max_x2 mp_tally += #max mp_tally

execute if score #max mp_tally matches 0 run function murder_party:meeting/no_ejection
execute if score #max mp_tally matches 1.. if score #max_matches mp_tally matches 2.. run function murder_party:meeting/no_ejection
execute if score #max mp_tally matches 1.. if score #max_matches mp_tally matches 1 if score #max_x2 mp_tally > #total_living mp_tally run function murder_party:meeting/eject_winner
execute if score #max mp_tally matches 1.. if score #max_matches mp_tally matches 1 unless score #max_x2 mp_tally > #total_living mp_tally run function murder_party:meeting/no_ejection
