tag @s remove mp_alive
tag @s add mp_spectating
gamemode spectator @s
tellraw @s [{"text":"[Murder Party] You were struck by the Killer's knife.","color":"red"}]

# gamemode spectator is a no-op on a Test Dummy (not a player), leaving it
# visibly standing there with no sign it was eliminated; just remove it
execute if entity @s[tag=mp_test_dummy] run kill @s

function murder_party:check_win
