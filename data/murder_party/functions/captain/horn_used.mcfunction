# a repeatable Captain ability gated purely by its own 2-minute cooldown, not
# the one-per-Round Meeting Call the Panic Button spends - that's what was
# letting the group spam Meetings before this existed
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] if score @s mp_captain_horn_cooldown matches 1.. run tellraw @s [{"text":"[Murder Party] Horn on cooldown.","color":"red"}]
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] if score @s mp_captain_horn_cooldown matches 0 run function murder_party:meeting/start
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] if score @s mp_captain_horn_cooldown matches 0 run scoreboard players set @s mp_captain_horn_cooldown 120

advancement revoke @s only murder_party:captain_horn_used
