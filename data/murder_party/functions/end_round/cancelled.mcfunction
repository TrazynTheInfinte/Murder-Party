execute if score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] Round cancelled.","color":"yellow"}]
execute if score #mp mp_state matches 1 run function murder_party:end_round/reset
