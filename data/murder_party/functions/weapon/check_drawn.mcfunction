execute unless entity @s[tag=mp_weapon_drawn] if predicate murder_party:holding_weapon run function murder_party:weapon/show_cooldown
execute if entity @s[tag=mp_weapon_drawn] unless predicate murder_party:holding_weapon run tag @s remove mp_weapon_drawn
