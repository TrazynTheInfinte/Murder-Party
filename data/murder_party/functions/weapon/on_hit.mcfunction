execute if entity @s[tag=mp_killer,tag=mp_alive] run function murder_party:weapon/on_hit_as_killer
advancement revoke @s only murder_party:weapon_hit
