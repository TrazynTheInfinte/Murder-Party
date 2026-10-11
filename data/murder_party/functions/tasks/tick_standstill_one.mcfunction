# @s = a living Participant, once per tick. Position is compared at x1000
# scale, not rounded - turning to look around doesn't move Pos, only walking
# does, so this correctly tells "standing still" from "walking" every tick.
execute store result score @s mp_task_cur_x run data get entity @s Pos[0] 1000
execute store result score @s mp_task_cur_y run data get entity @s Pos[1] 1000
execute store result score @s mp_task_cur_z run data get entity @s Pos[2] 1000

execute if score @s mp_task_cur_x = @s mp_task_prev_x if score @s mp_task_cur_y = @s mp_task_prev_y if score @s mp_task_cur_z = @s mp_task_prev_z run function murder_party:tasks/standstill_held
execute unless score @s mp_task_cur_x = @s mp_task_prev_x run scoreboard players set @s mp_task_standstill_ticks 0
execute unless score @s mp_task_cur_y = @s mp_task_prev_y run scoreboard players set @s mp_task_standstill_ticks 0
execute unless score @s mp_task_cur_z = @s mp_task_prev_z run scoreboard players set @s mp_task_standstill_ticks 0

scoreboard players operation @s mp_task_prev_x = @s mp_task_cur_x
scoreboard players operation @s mp_task_prev_y = @s mp_task_cur_y
scoreboard players operation @s mp_task_prev_z = @s mp_task_cur_z
