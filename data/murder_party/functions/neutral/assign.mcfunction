# total participants this Round (Test Dummies count, same as the join threshold)
scoreboard players set #mp mp_participant_count 0
execute as @e[tag=mp_alive] run scoreboard players add #mp mp_participant_count 1

scoreboard players set #mp mp_neutral_eligible 0

# 3 participants: only the admin's debug override allows a Neutral at all
execute if score #mp mp_participant_count matches 3 if score #mp mp_neutral_force matches 1 run scoreboard players set #mp mp_neutral_eligible 1

# 4-5 participants: a coinflip
execute if score #mp mp_participant_count matches 4..5 store result score #mp mp_neutral_roll run random value 1..2
execute if score #mp mp_participant_count matches 4..5 if score #mp mp_neutral_roll matches 1 run scoreboard players set #mp mp_neutral_eligible 1

# 6+ participants: guaranteed
execute if score #mp mp_participant_count matches 6.. run scoreboard players set #mp mp_neutral_eligible 1

execute if score #mp mp_neutral_eligible matches 1 run function murder_party:neutral/pick
