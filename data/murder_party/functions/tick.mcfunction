execute if score #mp mp_state matches 0 run function murder_party:lobby_tick
execute if score #mp mp_state matches 1 run function murder_party:round_tick
execute if score #mp mp_state matches 2 run function murder_party:countdown_tick
execute if score #mp mp_state matches 3 run function murder_party:meeting/discussion_tick
execute if score #mp mp_state matches 4 run function murder_party:meeting/voting_tick

# Security Room is a persistent map feature, not Round-scoped - runs regardless of mp_state
function murder_party:security/check_tether
