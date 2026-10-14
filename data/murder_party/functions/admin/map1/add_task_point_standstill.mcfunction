summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_map1_task_point_standstill","mp_task_point_new"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}

scoreboard players add #mp mp_task_point_next_id 1
execute as @e[tag=mp_task_point_new] run scoreboard players operation @s mp_task_point_id = #mp mp_task_point_next_id
execute as @e[tag=mp_task_point_new] store result score @s mp_task_point_x run data get entity @s Pos[0] 1
execute as @e[tag=mp_task_point_new] store result score @s mp_task_point_y run data get entity @s Pos[1] 1
execute as @e[tag=mp_task_point_new] store result score @s mp_task_point_z run data get entity @s Pos[2] 1

# optional - stage a name first with:
# /data modify storage murder_party:admin task_point_name set value "Generator Room"
execute as @e[tag=mp_task_point_new] run data modify entity @s CustomName set from storage murder_party:admin task_point_name

# Task Points are meant to be spread across the map - force-load their chunk
# so @e selectors can still find them from anywhere, not just when a player
# happens to be standing nearby
execute as @e[tag=mp_task_point_new] at @s run forceload add ~ ~

tag @e[tag=mp_task_point_new] remove mp_task_point_new
data remove storage murder_party:admin task_point_name

tellraw @s [{"text":"[Murder Party] Map 1 stand-still Task Point added.","color":"gray"}]
