# see remove_short.mcfunction for the same accepted approximation
execute at @e[tag=mp_corpse_marker,limit=1] run kill @e[type=playercorpse:corpse,distance=..1]
kill @e[tag=mp_corpse_marker,limit=1]
