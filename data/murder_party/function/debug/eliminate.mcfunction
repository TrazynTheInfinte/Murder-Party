execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless score #mp mp_state matches 1 run return fail

tag @s remove mp_alive
tag @s remove mp_killer
tag @s add mp_spectating
gamemode spectator @s
tellraw @s [{"text":"[Murder Party] (debug) You have been eliminated.","color":"red"}]

function murder_party:check_win
