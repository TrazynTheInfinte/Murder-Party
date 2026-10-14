# @s = the player who right-clicked an entity while holding the Task
# Spyglass. Not necessarily a real Task Point - harmless no-op below if
# nothing matches within range (e.g. they clicked a mob instead)
tag @s add mp_task_doer
# distance=..3, not ..2 - a player's actual entity-interact reach in survival
# is ~3 blocks, so a click landing on the Interaction entity's hitbox from
# just past 2 blocks away was silently failing this check even though the
# click itself registered. sort=nearest - the advancement trigger doesn't
# tell us which entity was actually clicked, so if two Task Points are both
# within 3 blocks the closest one is our best guess at which one it was
execute if score #mp mp_state matches 1 as @e[tag=mp_task_point_instant,distance=..3,sort=nearest,limit=1] run function murder_party:tasks/complete_instant
tag @s remove mp_task_doer

# printed here, with @s back to the player - tellraw produced no output at
# all when run with the Task Point entity still as executor (see commit history)
execute if entity @s[tag=mp_task_just_completed] run tellraw @s [{"text":"[Murder Party] Task complete!","color":"green"}]
tag @s remove mp_task_just_completed

advancement revoke @s only murder_party:task_spyglass_interacted
