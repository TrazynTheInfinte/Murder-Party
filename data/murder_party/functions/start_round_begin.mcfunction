title @a clear

# the Killer didn't click a choice in time - defaults to Saboteur
execute as @e[tag=mp_killer] unless entity @s[tag=mp_killer_variant_chosen] run tag @s add mp_saboteur

execute as @e[tag=mp_saboteur] run function murder_party:killer/give_kit

execute as @e[tag=mp_masked_killer] run tellraw @s [{"text":"[Murder Party] You are the Masked Killer!","color":"dark_red","bold":true}]
execute as @e[tag=mp_saboteur] run tellraw @s [{"text":"[Murder Party] You are the Saboteur!","color":"dark_red","bold":true}]

execute as @e[tag=mp_alive] run function murder_party:place_participant

# Captain's one deliberate exception to the hidden-nametag rule - overrides
# the mp_hidden team place_participant just put them on
execute as @e[tag=mp_captain] run team join mp_captain_visible @s

tellraw @a[tag=mp_alive,tag=!mp_killer] [{"text":"[Murder Party] You are an Innocent. Find the Killer!","color":"green"}]
execute as @e[tag=mp_vigilante] run tellraw @s [{"text":"[Murder Party] You are the Vigilante. One strike on the Killer is all you get.","color":"gold","bold":true}]
execute as @e[tag=mp_noisemaker] run tellraw @s [{"text":"[Murder Party] You are the Noisemaker. Your death will alert everyone.","color":"gold","bold":true}]
execute as @e[tag=mp_captain] run tellraw @s [{"text":"[Murder Party] You are the Captain. Use your horn to call a Meeting from anywhere.","color":"gold","bold":true}]

# 12000 ticks = 10 minutes at 20 ticks/sec
scoreboard players set #mp mp_timer 12000
scoreboard players set #mp mp_state 1

tellraw @a [{"text":"[Murder Party] Round started! ","color":"dark_red"},{"text":"Find the Killer before time runs out.","color":"gray"}]
