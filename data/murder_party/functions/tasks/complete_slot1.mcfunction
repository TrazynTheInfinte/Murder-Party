# @s = the Task Point just completed; mp_task_doer tags the Participant who
# did it; #mp mp_task_complete_amount holds how much Round Timer to shave off
scoreboard players set @e[tag=mp_task_doer,limit=1] mp_task1_done 1
execute unless entity @e[tag=mp_task_doer,limit=1,tag=mp_killer] run scoreboard players operation #mp mp_timer -= #mp mp_task_complete_amount
tellraw @a[tag=mp_task_doer,limit=1] [{"text":"[Murder Party] Task complete!","color":"green"}]
