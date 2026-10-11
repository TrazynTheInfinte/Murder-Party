# @s = an Innocent or the Killer, being given this Round's Checklist.
# Picks up to 3 distinct Task Points (fewer if that many don't exist) and
# gives a Task Spyglass to see them. The Killer goes through this exact same
# path - their Checklist is real Task Points too (ADR 0029), just with no
# effect on the Round Timer when "completed" (see tasks/complete_slot*).

execute as @e[tag=mp_task_point,sort=random,limit=1] run tag @s add mp_task_picked_1
execute if entity @e[tag=mp_task_picked_1] run scoreboard players operation @s mp_task1_id = @e[tag=mp_task_picked_1,limit=1] mp_task_point_id

execute as @e[tag=mp_task_point,tag=!mp_task_picked_1,sort=random,limit=1] run tag @s add mp_task_picked_2
execute if entity @e[tag=mp_task_picked_2] run scoreboard players operation @s mp_task2_id = @e[tag=mp_task_picked_2,limit=1] mp_task_point_id

execute as @e[tag=mp_task_point,tag=!mp_task_picked_1,tag=!mp_task_picked_2,sort=random,limit=1] run tag @s add mp_task_picked_3
execute if entity @e[tag=mp_task_picked_3] run scoreboard players operation @s mp_task3_id = @e[tag=mp_task_picked_3,limit=1] mp_task_point_id

tag @e[tag=mp_task_picked_1] remove mp_task_picked_1
tag @e[tag=mp_task_picked_2] remove mp_task_picked_2
tag @e[tag=mp_task_picked_3] remove mp_task_picked_3

# no return - gate the give+announce on having gotten at least one slot
execute if score @s mp_task1_id matches 1.. run function murder_party:tasks/give_and_show
execute unless score @s mp_task1_id matches 1.. if score @s mp_task2_id matches 1.. run function murder_party:tasks/give_and_show
execute unless score @s mp_task1_id matches 1.. unless score @s mp_task2_id matches 1.. if score @s mp_task3_id matches 1.. run function murder_party:tasks/give_and_show
