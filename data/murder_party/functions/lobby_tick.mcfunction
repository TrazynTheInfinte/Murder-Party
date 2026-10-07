scoreboard players set #joined mp_count 0
execute as @e[tag=mp_joined] run scoreboard players add #joined mp_count 1

execute if score #joined mp_count matches 3.. run function murder_party:start_round
