tag @s remove mp_alive
tag @s add mp_spectating
gamemode spectator @s
tellraw @s [{"text":"[Murder Party] You were struck by the Killer's knife.","color":"red"}]
function murder_party:check_win
