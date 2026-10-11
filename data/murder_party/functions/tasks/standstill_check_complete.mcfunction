# @s = a Participant who has held still for 5+ seconds
tag @s add mp_task_doer
execute as @e[tag=mp_task_point_standstill,distance=..2,limit=1] run function murder_party:tasks/complete_standstill
tag @s remove mp_task_doer
