execute unless entity @s[tag=mp_joined] run tellraw @s [{"text":"[Murder Party] You're not queued.","color":"yellow"}]
execute unless entity @s[tag=mp_joined] run return fail

tag @s remove mp_joined
tellraw @s [{"text":"[Murder Party] Left the queue.","color":"gray"}]
