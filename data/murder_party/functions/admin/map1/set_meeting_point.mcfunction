# scans a small cube around the admin for an already-placed Panic Button
# and records THAT block's exact position, not the admin's own position
tag @s remove mp_meeting_point_found

execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~0 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~0 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~1 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~0 ~1 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~0 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~0 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~1 ~0 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found
execute positioned ~1 ~1 ~1 if block ~ ~ ~ securitycraft:panic_button run function murder_party:admin/map1/set_meeting_point_found

execute unless entity @s[tag=mp_meeting_point_found] run tellraw @s [{"text":"[Murder Party] No Panic Button found nearby. Place one and stand next to it first.","color":"red"}]
tag @s remove mp_meeting_point_found
