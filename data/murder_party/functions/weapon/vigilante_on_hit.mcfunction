execute if entity @s[tag=mp_vigilante,tag=mp_alive] run function murder_party:weapon/vigilante_on_hit_as_vigilante
advancement revoke @s only murder_party:vigilante_weapon_hit
