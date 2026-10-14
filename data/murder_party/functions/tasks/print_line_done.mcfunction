# @s = the matched Task Point entity; mp_task_checking tags the recipient.
# Stage this point's name/coords onto the recipient and into storage first -
# a tellraw score/nbt component can't reliably read straight off a non-player
# entity like @s here, so copy everything onto something tellraw can target.
scoreboard players operation @e[tag=mp_task_checking,limit=1] mp_task_display_x = @s mp_task_point_x
scoreboard players operation @e[tag=mp_task_checking,limit=1] mp_task_display_y = @s mp_task_point_y
scoreboard players operation @e[tag=mp_task_checking,limit=1] mp_task_display_z = @s mp_task_point_z
data remove storage murder_party:tasks task_point_name
data modify storage murder_party:tasks task_point_name set from entity @s CustomName

tellraw @a[tag=mp_task_checking,limit=1] [{"text":"[Murder Party] Task: ","color":"gray"},{"nbt":"task_point_name","storage":"murder_party:tasks","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name":"@a[tag=mp_task_checking,limit=1]","objective":"mp_task_display_x"}},{"text":", ","color":"gray"},{"score":{"name":"@a[tag=mp_task_checking,limit=1]","objective":"mp_task_display_y"}},{"text":", ","color":"gray"},{"score":{"name":"@a[tag=mp_task_checking,limit=1]","objective":"mp_task_display_z"}},{"text":") - Done","color":"green"}]
