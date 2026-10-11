# clearing/retiring only happens for genuine hits now - a knife that finds a
# Protected target survives on a cooldown instead of breaking (ADR 0025), and
# the Hit isn't actually complete, so the Hitman doesn't retire either
execute if entity @e[tag=mp_alive,tag=mp_hitman_target,tag=mp_bodyguard_target,distance=..4] run tellraw @s [{"text":"[Murder Party] Your target was protected!","color":"red"}]
execute as @e[tag=mp_alive,tag=mp_hitman_target,tag=mp_bodyguard_target,distance=..4,limit=1] run tag @s remove mp_bodyguard_target
execute if entity @e[tag=mp_alive,tag=mp_hitman_target,tag=mp_bodyguard_target,distance=..4] run scoreboard players set @s mp_hitman_knife_cooldown 60

execute if entity @e[tag=mp_alive,tag=mp_hitman_target,tag=!mp_bodyguard_target,distance=..4] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s","color":"light_purple"},{"text":" completed their Hit!","color":"dark_red","bold":true}]
execute if entity @e[tag=mp_alive,tag=mp_hitman_target,tag=!mp_bodyguard_target,distance=..4] run clear @s simpleknives:iron_knife{MurderPartyHitmanWeapon:1b}

# snapshot whether this was a genuine hit before hitman_eliminate_target
# removes the target's mp_alive tag - after that, this same selector would no
# longer match
execute if entity @e[tag=mp_alive,tag=mp_hitman_target,tag=!mp_bodyguard_target,distance=..4] run tag @s add mp_hitman_hit_target

execute as @e[tag=mp_alive,tag=mp_hitman_target,tag=!mp_bodyguard_target,distance=..4,limit=1] run function murder_party:weapon/hitman_eliminate_target

execute unless entity @e[tag=mp_alive,tag=mp_hitman_target,distance=..4] run tellraw @s [{"text":"[Murder Party] Wrong target - your knife shatters.","color":"red"}]
execute unless entity @e[tag=mp_alive,tag=mp_hitman_target,distance=..4] run clear @s simpleknives:iron_knife{MurderPartyHitmanWeapon:1b}

# the Hitman's job is done the instant their Hit lands - they retire to
# Spectating too, rather than keep playing on with no remaining objective
execute if entity @s[tag=mp_hitman_hit_target] run tellraw @s [{"text":"[Murder Party] Hit complete. You retire to spectating.","color":"light_purple"}]
execute if entity @s[tag=mp_hitman_hit_target] run tag @s remove mp_alive
execute if entity @s[tag=mp_hitman_hit_target] run tag @s add mp_spectating
execute if entity @s[tag=mp_hitman_hit_target] run gamemode spectator @s
execute if entity @s[tag=mp_hitman_hit_target] if entity @s[tag=mp_test_dummy] run kill @s
tag @s remove mp_hitman_hit_target

execute if entity @s[tag=mp_spectating] run function murder_party:check_win
