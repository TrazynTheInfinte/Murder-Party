# @s = a Participant who hasn't moved this tick
scoreboard players add @s mp_task_standstill_ticks 1
execute if score @s mp_task_standstill_ticks matches 100.. run function murder_party:tasks/standstill_check_complete
