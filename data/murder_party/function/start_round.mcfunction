execute if score #mp mp_state matches 1 run return fail

scoreboard players set #joined mp_count 0
execute as @e[tag=mp_joined] run scoreboard players add #joined mp_count 1

execute unless score #joined mp_count matches 2.. run tellraw @a [{"text":"[Murder Party] Need at least 2 participants to start.","color":"red"}]
execute unless score #joined mp_count matches 2.. run return fail

execute unless entity @e[tag=mp_lobby_point] run tellraw @a [{"text":"[Murder Party] No lobby point set. An admin must run /function murder_party:admin/set_lobby_point.","color":"red"}]
execute unless entity @e[tag=mp_lobby_point] run return fail

execute unless entity @e[tag=mp_spawn_point] run tellraw @a [{"text":"[Murder Party] No spawn points set. An admin must run /function murder_party:admin/add_spawn_point.","color":"red"}]
execute unless entity @e[tag=mp_spawn_point] run return fail

tag @e[tag=mp_joined] add mp_alive
tag @e[tag=mp_joined] add mp_participant
tag @e[tag=mp_joined] remove mp_joined

execute as @e[tag=mp_alive] run function murder_party:place_participant

execute as @e[tag=mp_alive,sort=random,limit=1] run function murder_party:make_killer
tellraw @a[tag=mp_alive,tag=!mp_killer] [{"text":"[Murder Party] You are an Innocent. Find the Killer!","color":"green"}]

# 12000 ticks = 10 minutes at 20 ticks/sec
scoreboard players set #mp mp_timer 12000
scoreboard players set #mp mp_state 1

tellraw @a [{"text":"[Murder Party] Round started! ","color":"dark_red"},{"text":"Find the Killer before time runs out.","color":"gray"}]
