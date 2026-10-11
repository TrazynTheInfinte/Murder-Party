# @s = the stand-still Task Point just held at for 5 seconds; mp_task_doer
# tags the Participant who held there. 30 seconds off the Round Timer.
scoreboard players set #mp mp_task_complete_amount 600
scoreboard players set @e[tag=mp_task_doer,limit=1] mp_task_standstill_ticks 0

execute if score @e[tag=mp_task_doer,limit=1] mp_task1_id = @s mp_task_point_id unless score @e[tag=mp_task_doer,limit=1] mp_task1_done matches 1 run function murder_party:tasks/complete_slot1
execute if score @e[tag=mp_task_doer,limit=1] mp_task2_id = @s mp_task_point_id unless score @e[tag=mp_task_doer,limit=1] mp_task2_done matches 1 run function murder_party:tasks/complete_slot2
execute if score @e[tag=mp_task_doer,limit=1] mp_task3_id = @s mp_task_point_id unless score @e[tag=mp_task_doer,limit=1] mp_task3_done matches 1 run function murder_party:tasks/complete_slot3
