# @s = the player who right-clicked an entity while holding the Task
# Spyglass. Not necessarily a real Task Point - harmless no-op below if
# nothing matches within range (e.g. they clicked a mob instead)
tag @s add mp_task_doer
execute if score #mp mp_state matches 1 as @e[tag=mp_task_point_instant,distance=..2,limit=1] run function murder_party:tasks/complete_instant
tag @s remove mp_task_doer

advancement revoke @s only murder_party:task_spyglass_interacted
