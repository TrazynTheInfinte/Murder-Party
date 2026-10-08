# fires once per scheduled corpse (queued with "append"); targets whichever
# marker/corpse pair is found first - with multiple overlapping kills this can
# occasionally clear the wrong one of several simultaneously-existing corpses,
# an accepted approximation rather than building per-instance unique tracking
execute at @e[tag=mp_corpse_marker,limit=1] run kill @e[type=playercorpse:corpse,distance=..1]
kill @e[tag=mp_corpse_marker,limit=1]
