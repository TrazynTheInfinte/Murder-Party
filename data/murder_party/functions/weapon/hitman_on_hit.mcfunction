execute if score #mp mp_state matches 1 if entity @s[tag=mp_hitman,tag=mp_alive] if predicate murder_party:holding_hitman_weapon if score @s mp_hitman_knife_cooldown matches 1.. run tellraw @s [{"text":"[Murder Party] Knife not ready yet.","color":"red"}]
execute if score #mp mp_state matches 1 if entity @s[tag=mp_hitman,tag=mp_alive] if predicate murder_party:holding_hitman_weapon if score @s mp_hitman_knife_cooldown matches 0 run function murder_party:weapon/hitman_try_strike
advancement revoke @s only murder_party:hitman_weapon_hit
