# a sustained right-click re-fires this advancement every tick it's held -
# debounce with a short cooldown so holding it doesn't spam the Checklist
execute unless score @s mp_task_spyglass_cooldown matches 1.. run function murder_party:tasks/show_checklist
execute unless score @s mp_task_spyglass_cooldown matches 1.. run scoreboard players set @s mp_task_spyglass_cooldown 2

advancement revoke @s only murder_party:task_spyglass_used
