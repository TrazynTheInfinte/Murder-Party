# @s = the player checking their Checklist. Reads the data tasks/stage_display
# staged a moment earlier, since tellraw wouldn't print at all when @s was
# still the Task Point entity itself (confirmed live - see commit history).
tellraw @s [{"text":"[Murder Party] Task: ","color":"gray"},{"nbt":"task_point_name","storage":"murder_party:tasks","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"mp_task_display_x"}},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"mp_task_display_y"}},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"mp_task_display_z"}},{"text":") - Done","color":"green"}]
