execute if predicate murder_party:holding_weapon if score @s mp_cooldown matches 1.. run tellraw @s [{"text":"[Murder Party] Weapon not ready yet.","color":"red"}]
execute if predicate murder_party:holding_weapon if score @s mp_cooldown matches 0 run function murder_party:weapon/try_strike
