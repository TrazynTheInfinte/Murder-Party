# radius is admin-configurable via a plain "scoreboard players set #mp
# mp_security_radius <N>" command, not a hardcoded literal - compared via
# squared distance (no square root needed) against the holder's position

execute as @e[tag=mp_security_room,limit=1] store result score #room mp_pos_x run data get entity @s Pos[0] 1
execute as @e[tag=mp_security_room,limit=1] store result score #room mp_pos_y run data get entity @s Pos[1] 1
execute as @e[tag=mp_security_room,limit=1] store result score #room mp_pos_z run data get entity @s Pos[2] 1

execute store result score @s mp_pos_x run data get entity @s Pos[0] 1
execute store result score @s mp_pos_y run data get entity @s Pos[1] 1
execute store result score @s mp_pos_z run data get entity @s Pos[2] 1

scoreboard players operation @s mp_pos_x -= #room mp_pos_x
scoreboard players operation @s mp_pos_y -= #room mp_pos_y
scoreboard players operation @s mp_pos_z -= #room mp_pos_z

scoreboard players operation @s mp_pos_x *= @s mp_pos_x
scoreboard players operation @s mp_pos_y *= @s mp_pos_y
scoreboard players operation @s mp_pos_z *= @s mp_pos_z

scoreboard players operation @s mp_dist_sq = @s mp_pos_x
scoreboard players operation @s mp_dist_sq += @s mp_pos_y
scoreboard players operation @s mp_dist_sq += @s mp_pos_z

scoreboard players operation #mp mp_radius_sq = #mp mp_security_radius
scoreboard players operation #mp mp_radius_sq *= #mp mp_security_radius

execute if entity @e[tag=mp_security_room,limit=1] if score @s mp_dist_sq > #mp mp_radius_sq run function murder_party:security/return_monitor
