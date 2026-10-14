# release the forced chunks before killing the points they marked
execute as @e[tag=mp_map1_task_point_instant] at @s run forceload remove ~ ~
execute as @e[tag=mp_map1_task_point_standstill] at @s run forceload remove ~ ~

kill @e[tag=mp_map1_task_point_instant]
kill @e[tag=mp_map1_task_point_standstill]
tellraw @s [{"text":"[Murder Party] Map 1 task points cleared.","color":"gray"}]
