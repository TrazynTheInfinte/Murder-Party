scoreboard players set #mp mp_ready_phase 1
tag @a[tag=mp_joined] remove mp_ready

tellraw @a[tag=mp_joined] [{"text":"[Murder Party] Enough players queued! ","color":"gold"},{"text":"[Ready]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function murder_party:lobby/ready_up"}}]
