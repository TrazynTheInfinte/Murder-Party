# hardcoded to Map 1 for now - the only Map that exists (ADR 0021). Once Map 2+
# are built, replace this with a real /random value 1..N roll into a score and
# dispatch the same way neutral/pick_type.mcfunction picks a Neutral type.
scoreboard players set #mp mp_active_map 1

# strip any previous Round's generic tags before reapplying - a safe no-op
# today since only Map 1 exists, but keeps this correct once more Maps do
tag @e remove mp_spawn_point
tag @e remove mp_meeting_point
tag @e remove mp_security_room
tag @e remove mp_saboteur_kit

execute if score #mp mp_active_map matches 1 run function murder_party:map/apply_map1
