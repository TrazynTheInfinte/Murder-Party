# one-time convenience: copies your existing single-Map setup (tagged with
# the old generic tags, from before multi-Map support) onto Map 1's own tags,
# so you don't have to walk back to every chest/button/point to redo this by
# hand. Safe to run even if some of these were never set - each line is a
# no-op if nothing matches.
tag @e[tag=mp_spawn_point] add mp_map1_spawn_point
tag @e[tag=mp_meeting_point] add mp_map1_meeting_point
tag @e[tag=mp_security_room] add mp_map1_security_room
tag @e[tag=mp_saboteur_kit] add mp_map1_saboteur_kit
scoreboard players operation #map1 mp_security_radius = #mp mp_security_radius

tellraw @s [{"text":"[Murder Party] Existing setup migrated to Map 1.","color":"gray"}]
