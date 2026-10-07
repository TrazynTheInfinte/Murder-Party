execute unless entity @s[tag=mp_joined] run tellraw @s [{"text":"[Murder Party] You're not queued.","color":"yellow"}]

execute if entity @s[tag=mp_joined] run tellraw @s [{"text":"[Murder Party] Left the queue.","color":"gray"}]
execute if entity @s[tag=mp_joined] run tag @s remove mp_joined
