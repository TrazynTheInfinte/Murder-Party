# the goat horn has a sustained "use" animation, so minecraft:using_item
# re-fires this reward function repeatedly during a single blow - without a
# cooldown, one blow after the Call is already spent spams the rejection
# message for the whole animation. 3s is just long enough to cover one blow.
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] if score @s mp_captain_horn_cooldown matches 0 if entity @s[tag=mp_meeting_used] run tellraw @s [{"text":"[Murder Party] You've already called a Meeting this Round.","color":"red"}]
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] if score @s mp_captain_horn_cooldown matches 0 unless entity @s[tag=mp_meeting_used] run function murder_party:meeting/start
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] if score @s mp_captain_horn_cooldown matches 0 run tag @s add mp_meeting_used
execute if score #mp mp_state matches 1 if entity @s[tag=mp_captain,tag=mp_alive] if score @s mp_captain_horn_cooldown matches 0 run scoreboard players set @s mp_captain_horn_cooldown 3

advancement revoke @s only murder_party:captain_horn_used
