scoreboard players add #mp mp_subtick 1
execute if score #mp mp_subtick matches 20.. run scoreboard players set #mp mp_subtick 0
execute if score #mp mp_subtick matches 0 run scoreboard players remove #mp mp_meeting_timer 1

execute if score #mp mp_subtick matches 0 if score #mp mp_meeting_timer matches 0 run function murder_party:meeting/tally

execute if score #mp mp_state matches 4 run function murder_party:heal_participants
