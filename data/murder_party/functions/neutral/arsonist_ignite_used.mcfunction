execute if score #mp mp_state matches 1 if entity @s[tag=mp_arsonist,tag=mp_alive] run function murder_party:neutral/arsonist_ignite
advancement revoke @s only murder_party:arsonist_ignite_used
