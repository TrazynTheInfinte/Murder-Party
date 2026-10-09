# spending the caller's Meeting Call is the caller's job, not this function's -
# Reporting a Corpse calls this directly without spending one (ADR 0015)

# a Meeting empties the arena of bodies along with everyone else
kill @e[type=playercorpse:corpse]
kill @e[tag=mp_corpse_marker]

execute as @e[tag=mp_alive] at @e[tag=mp_meeting_point,limit=1] run tp @s ~ ~ ~

scoreboard players set #mp mp_meeting_timer 60
scoreboard players set #mp mp_subtick 0
scoreboard players set #mp mp_state 3

tellraw @a [{"text":"[Murder Party] A Meeting has been called! Discuss.","color":"gold","bold":true}]
