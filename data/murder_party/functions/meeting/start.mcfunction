tag @s add mp_meeting_used

execute as @e[tag=mp_alive] at @e[tag=mp_meeting_point,limit=1] run tp @s ~ ~ ~

scoreboard players set #mp mp_meeting_timer 60
scoreboard players set #mp mp_subtick 0
scoreboard players set #mp mp_state 3

tellraw @a [{"text":"[Murder Party] A Meeting has been called! Discuss.","color":"gold","bold":true}]
