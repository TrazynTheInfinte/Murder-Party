# defensive: a stray mp_killer tag (e.g. from debug/set_role misuse before
# this round began) must not survive into the new round's role assignment
tag @e remove mp_killer

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
