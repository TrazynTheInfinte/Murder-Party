tellraw @a[tag=mp_joined] [{"text":"[Murder Party] Not enough players left - ready check cancelled.","color":"red"}]
scoreboard players set #mp mp_ready_phase 0
tag @a[tag=mp_joined] remove mp_ready
