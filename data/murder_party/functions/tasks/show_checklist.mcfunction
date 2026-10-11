# @s = the Participant checking their Checklist (via the Task Spyglass, or
# the one-time announcement at Round start). Printed wording never reveals
# whether a Task is real or fake (ADR 0029) - same message either way.

execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No Round in progress.","color":"gray"}]

tag @s add mp_task_checking

execute if score #mp mp_state matches 1 if score @s mp_task1_id matches 1.. if score @s mp_task1_done matches 1 as @e[tag=mp_task_point] if score @s mp_task_point_id = @e[tag=mp_task_checking,limit=1] mp_task1_id run function murder_party:tasks/print_line_done
execute if score #mp mp_state matches 1 if score @s mp_task1_id matches 1.. unless score @s mp_task1_done matches 1 as @e[tag=mp_task_point] if score @s mp_task_point_id = @e[tag=mp_task_checking,limit=1] mp_task1_id run function murder_party:tasks/print_line_pending

execute if score #mp mp_state matches 1 if score @s mp_task2_id matches 1.. if score @s mp_task2_done matches 1 as @e[tag=mp_task_point] if score @s mp_task_point_id = @e[tag=mp_task_checking,limit=1] mp_task2_id run function murder_party:tasks/print_line_done
execute if score #mp mp_state matches 1 if score @s mp_task2_id matches 1.. unless score @s mp_task2_done matches 1 as @e[tag=mp_task_point] if score @s mp_task_point_id = @e[tag=mp_task_checking,limit=1] mp_task2_id run function murder_party:tasks/print_line_pending

execute if score #mp mp_state matches 1 if score @s mp_task3_id matches 1.. if score @s mp_task3_done matches 1 as @e[tag=mp_task_point] if score @s mp_task_point_id = @e[tag=mp_task_checking,limit=1] mp_task3_id run function murder_party:tasks/print_line_done
execute if score #mp mp_state matches 1 if score @s mp_task3_id matches 1.. unless score @s mp_task3_done matches 1 as @e[tag=mp_task_point] if score @s mp_task_point_id = @e[tag=mp_task_checking,limit=1] mp_task3_id run function murder_party:tasks/print_line_pending

tag @s remove mp_task_checking
