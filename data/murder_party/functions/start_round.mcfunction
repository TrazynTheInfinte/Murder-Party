execute if score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] A round is already active.","color":"red"}]

scoreboard players set #joined mp_count 0
execute as @e[tag=mp_joined] run scoreboard players add #joined mp_count 1

execute unless score #joined mp_count matches 2.. run tellraw @a [{"text":"[Murder Party] Need at least 2 participants to start.","color":"red"}]
execute unless entity @e[tag=mp_lobby_point] run tellraw @a [{"text":"[Murder Party] No lobby point set. An admin must run /function murder_party:admin/set_lobby_point.","color":"red"}]
execute unless entity @e[tag=mp_spawn_point] run tellraw @a [{"text":"[Murder Party] No spawn points set. An admin must run /function murder_party:admin/add_spawn_point.","color":"red"}]

execute unless score #mp mp_state matches 1 if score #joined mp_count matches 2.. if entity @e[tag=mp_lobby_point] if entity @e[tag=mp_spawn_point] run function murder_party:start_round_begin
