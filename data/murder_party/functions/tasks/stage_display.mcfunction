# @s = the matched Task Point entity; mp_task_checking tags the recipient.
# Copy this point's name/coords onto the recipient and into storage so the
# actual tellraw can run afterward with the player as executor, not @s here.
scoreboard players operation @e[tag=mp_task_checking,limit=1] mp_task_display_x = @s mp_task_point_x
scoreboard players operation @e[tag=mp_task_checking,limit=1] mp_task_display_y = @s mp_task_point_y
scoreboard players operation @e[tag=mp_task_checking,limit=1] mp_task_display_z = @s mp_task_point_z
data remove storage murder_party:tasks task_point_name
data modify storage murder_party:tasks task_point_name set from entity @s CustomName
