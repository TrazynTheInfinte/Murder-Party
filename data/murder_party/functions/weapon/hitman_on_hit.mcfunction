execute if score #mp mp_state matches 1 if entity @s[tag=mp_hitman,tag=mp_alive] if predicate murder_party:holding_hitman_weapon run function murder_party:weapon/hitman_try_strike
advancement revoke @s only murder_party:hitman_weapon_hit
