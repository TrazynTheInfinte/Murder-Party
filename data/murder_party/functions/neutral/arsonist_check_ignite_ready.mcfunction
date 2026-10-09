# @s = Arsonist. Reuses the mp_count objective with dedicated holders, same
# convention as check_win.mcfunction's #killers/#innocents
scoreboard players set #alive_others mp_count 0
execute as @e[tag=mp_alive,tag=!mp_arsonist] run scoreboard players add #alive_others mp_count 1

scoreboard players set #doused mp_count 0
execute as @e[tag=mp_alive,tag=!mp_arsonist,tag=mp_doused] run scoreboard players add #doused mp_count 1

execute if score #alive_others mp_count = #doused mp_count unless entity @s[tag=mp_arsonist_ready] run function murder_party:neutral/arsonist_grant_ignite
