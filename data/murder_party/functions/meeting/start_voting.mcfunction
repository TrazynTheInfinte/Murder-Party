function murder_party:meeting/assign_slots
function murder_party:meeting/show_ballot

scoreboard players set #mp mp_meeting_timer 30
scoreboard players set #mp mp_subtick 0
scoreboard players set #mp mp_state 4

tellraw @a [{"text":"[Murder Party] Voting has started! 30 seconds.","color":"gold","bold":true}]
