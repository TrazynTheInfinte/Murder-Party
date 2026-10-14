execute if score #mp mp_timer matches 1.. run scoreboard players remove #mp mp_timer 1
execute if score #mp mp_timer matches 0 run function murder_party:end_round/innocents

execute if score #mp mp_state matches 1 run function murder_party:check_win
execute if score #mp mp_state matches 1 run function murder_party:heal_participants

scoreboard players add #mp mp_subtick 1
execute if score #mp mp_subtick matches 20.. run scoreboard players set #mp mp_subtick 0
execute if score #mp mp_subtick matches 0 run function murder_party:weapon/tick_cooldowns
execute if score #mp mp_subtick matches 0 run function murder_party:neutral/tick_cooldowns
execute if score #mp mp_subtick matches 0 run function murder_party:captain/tick_cooldowns
execute if score #mp mp_subtick matches 0 run function murder_party:civilian/tick_cooldowns
execute if score #mp mp_subtick matches 0 run function murder_party:round_timer/refresh
execute if score #mp mp_subtick matches 0 run function murder_party:tasks/tick_spyglass_cooldown

execute as @e[tag=mp_killer,tag=mp_alive] run function murder_party:weapon/check_drawn

function murder_party:tasks/tick_standstill

execute if score #mp mp_state matches 1 run function murder_party:meeting/check_press
