execute if score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] A round is already active.","color":"red"}]
execute if score #mp mp_state matches 1 run return fail

function murder_party:start_round
