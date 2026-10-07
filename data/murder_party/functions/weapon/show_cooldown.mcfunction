tag @s add mp_weapon_drawn
execute if score @s mp_cooldown matches 0 run tellraw @s [{"text":"[Murder Party] Weapon ready.","color":"green"}]
execute if score @s mp_cooldown matches 1.. run tellraw @s [{"text":"[Murder Party] Weapon cooldown: ","color":"yellow"},{"score":{"name":"@s","objective":"mp_cooldown"}},{"text":"s","color":"yellow"}]
