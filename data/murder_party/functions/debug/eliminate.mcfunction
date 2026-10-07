execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]

execute if score #mp mp_state matches 1 if entity @s[tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
execute if score #mp mp_state matches 1 run tag @s remove mp_alive
execute if score #mp mp_state matches 1 run tag @s remove mp_killer
execute if score #mp mp_state matches 1 run tag @s add mp_spectating
execute if score #mp mp_state matches 1 run gamemode spectator @s
execute if score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] (debug) You have been eliminated.","color":"red"}]
execute if score #mp mp_state matches 1 if entity @s[tag=mp_test_dummy] run kill @s
execute if score #mp mp_state matches 1 run function murder_party:check_win
