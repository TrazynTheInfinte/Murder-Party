# deliberately does not touch the real Panic Button block - see the ADR on not
# forcing its state; it may stay visually "on" until someone presses it again
tag @e[tag=mp_alive] remove mp_has_voted

scoreboard players set #mp mp_state 1

function murder_party:check_win

execute if score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] The round continues.","color":"gray"}]
