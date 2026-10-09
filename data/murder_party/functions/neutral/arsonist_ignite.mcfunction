# @s = Arsonist. Everyone Doused dies at once - the Killer included if they
# were Doused, since the Arsonist wins only by being the sole survivor
execute as @e[tag=mp_doused] run function murder_party:neutral/convert_hitman_if_target_died
execute as @e[tag=mp_doused] run tag @s remove mp_alive
execute as @e[tag=mp_doused] run tag @s add mp_spectating
execute as @e[tag=mp_doused] run gamemode spectator @s
execute as @e[tag=mp_doused] if entity @s[tag=mp_test_dummy] run kill @s
tag @e[tag=mp_doused] remove mp_doused
tag @s remove mp_arsonist_ready

function murder_party:end_round/arsonist
