execute if score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] A round is already active.","color":"red"}]
execute unless score #mp mp_state matches 1 run function murder_party:start_round
