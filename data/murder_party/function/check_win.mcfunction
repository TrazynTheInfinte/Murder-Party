scoreboard players set #killers mp_count 0
execute as @e[tag=mp_alive,tag=mp_killer] run scoreboard players add #killers mp_count 1

scoreboard players set #innocents mp_count 0
execute as @e[tag=mp_alive,tag=!mp_killer] run scoreboard players add #innocents mp_count 1

# a disconnected player simply stops matching @e, so this count already
# treats a disconnect mid-round as an elimination with no extra code
execute if score #killers mp_count matches 0 run function murder_party:end_round {result:"innocents"}
execute if score #mp mp_state matches 1 if score #innocents mp_count matches 0 run function murder_party:end_round {result:"killer"}
