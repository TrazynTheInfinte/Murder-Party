# @s = the Participant chosen to be this Round's Neutral
tag @s add mp_neutral

execute store result score #mp mp_neutral_roll run random value 1..3
execute if score #mp mp_neutral_roll matches 1 run function murder_party:neutral/become_jester
execute if score #mp mp_neutral_roll matches 2 run function murder_party:neutral/become_arsonist
execute if score #mp mp_neutral_roll matches 3 run function murder_party:neutral/become_hitman
