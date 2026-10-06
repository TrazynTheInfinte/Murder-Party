execute if score #mp mp_timer matches 1.. run scoreboard players remove #mp mp_timer 1
execute if score #mp mp_timer matches 0 run function murder_party:end_round {result:"innocents"}

execute if score #mp mp_state matches 1 run function murder_party:check_win
