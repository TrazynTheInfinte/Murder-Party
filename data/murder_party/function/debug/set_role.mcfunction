execute unless score #mp mp_state matches 1 run tellraw @s [{"text":"[Murder Party] No active round.","color":"red"}]
execute unless score #mp mp_state matches 1 run return fail

execute unless entity @s[tag=mp_alive] run tellraw @s [{"text":"[Murder Party] You are not a participant in the active round.","color":"red"}]
execute unless entity @s[tag=mp_alive] run return fail

$function murder_party:debug/set_role_$(role)
