# @s = the instant Task Point just interacted with; mp_task_doer tags the
# Participant who interacted with it. 15 seconds off the Round Timer.
scoreboard players set #mp mp_task_complete_amount 300

execute if score @e[tag=mp_task_doer,limit=1] mp_task1_id = @s mp_task_point_id unless score @e[tag=mp_task_doer,limit=1] mp_task1_done matches 1 run function murder_party:tasks/complete_slot1
execute if score @e[tag=mp_task_doer,limit=1] mp_task2_id = @s mp_task_point_id unless score @e[tag=mp_task_doer,limit=1] mp_task2_done matches 1 run function murder_party:tasks/complete_slot2
execute if score @e[tag=mp_task_doer,limit=1] mp_task3_id = @s mp_task_point_id unless score @e[tag=mp_task_doer,limit=1] mp_task3_done matches 1 run function murder_party:tasks/complete_slot3
