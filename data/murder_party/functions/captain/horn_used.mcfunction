# reuses the Panic Button's own Meeting Call allowance (mp_meeting_used) -
# the horn is an alternate trigger for the same Meeting, not a separate
# unlimited resource
# checked before the tag mutation below - start.mcfunction no longer sets it
# itself, so this line is now the only place the horn spends the Call
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] if entity @s[tag=mp_meeting_used] run tellraw @s [{"text":"[Murder Party] You've already called a Meeting this Round.","color":"red"}]
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] unless entity @s[tag=mp_meeting_used] run function murder_party:meeting/start
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] run tag @s add mp_meeting_used

advancement revoke @s only murder_party:captain_horn_used
