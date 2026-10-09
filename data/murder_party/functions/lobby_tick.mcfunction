scoreboard players set #joined mp_count 0
execute as @e[tag=mp_joined] run scoreboard players add #joined mp_count 1

# dummies count toward the 3-participant threshold (solo testing), but the
# ready check below only ever waits on real players - @a never selects a dummy
execute if score #joined mp_count matches 3.. unless score #mp mp_ready_phase matches 1 run function murder_party:lobby/ready_phase_start
execute unless score #joined mp_count matches 3.. if score #mp mp_ready_phase matches 1 run function murder_party:lobby/ready_phase_cancel

execute if score #mp mp_ready_phase matches 1 run function murder_party:lobby/ready_check
