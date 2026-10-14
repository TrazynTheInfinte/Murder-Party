# @s = a Participant who has held still for 5+ seconds
# distance=..3 - matches instant_task_used's reach-distance fix, so standing
# as close as you'd stand to click an instant point also counts here
tag @s add mp_task_doer
execute as @e[tag=mp_task_point_standstill,distance=..3,limit=1] run function murder_party:tasks/complete_standstill
tag @s remove mp_task_doer

# printed here, with @s back to the player - tellraw produced no output at
# all when run with the Task Point entity still as executor (see commit history)
execute if entity @s[tag=mp_task_just_completed] run tellraw @s [{"text":"[Murder Party] Task complete!","color":"green"}]
tag @s remove mp_task_just_completed
