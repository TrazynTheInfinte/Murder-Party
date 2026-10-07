kill @e[tag=mp_test_dummy]

execute as @e[tag=mp_participant] at @s run function murder_party:end_round/reset_one

scoreboard players set #mp mp_state 0
scoreboard players set #mp mp_timer 0
