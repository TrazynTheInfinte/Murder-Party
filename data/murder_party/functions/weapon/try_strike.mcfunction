# distance ..4 approximates melee reach with a small margin for hit-registration lag
execute if entity @e[tag=mp_alive,tag=!mp_killer,distance=..4] run scoreboard players set @s mp_cooldown 60
execute if entity @e[tag=mp_alive,tag=!mp_killer,distance=..4] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1
execute as @e[tag=mp_alive,tag=!mp_killer,distance=..4,sort=nearest,limit=1] run function murder_party:weapon/eliminate_target
