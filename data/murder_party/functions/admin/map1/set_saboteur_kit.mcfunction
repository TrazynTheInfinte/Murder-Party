# scans a small cube around the admin for an already-placed chest or barrel
# holding the Saboteur's bound Create remotes, and records that exact
# position, not the admin's own position
tag @s remove mp_saboteur_kit_found

execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~0 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~0 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~1 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~-1 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~0 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~0 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~0 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~0 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~0 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~1 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~1 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~1 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~1 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~0 ~1 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~0 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~0 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~0 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~0 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~0 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~1 ~0 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~1 ~0 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:chest run function murder_party:admin/map1/set_saboteur_kit_found
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:barrel run function murder_party:admin/map1/set_saboteur_kit_found

execute unless entity @s[tag=mp_saboteur_kit_found] run tellraw @s [{"text":"[Murder Party] No chest or barrel found nearby. Place the bound remotes in one first.","color":"red"}]
tag @s remove mp_saboteur_kit_found
