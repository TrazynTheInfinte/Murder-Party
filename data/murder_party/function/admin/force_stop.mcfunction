execute unless score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] No active round to stop.","color":"red"}]
execute unless score #mp mp_state matches 1 run return fail

function murder_party:end_round {result:"cancelled"}
