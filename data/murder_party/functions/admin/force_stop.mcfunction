execute unless score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] No active round to stop.","color":"red"}]
execute if score #mp mp_state matches 1 run function murder_party:end_round/cancelled
