# distance ..4 approximates melee reach with a small margin for hit-registration lag
execute if entity @e[tag=mp_alive,tag=!mp_killer,distance=..4] if entity @s[tag=mp_slasher] run scoreboard players set @s mp_cooldown 30
execute if entity @e[tag=mp_alive,tag=!mp_killer,distance=..4] unless entity @s[tag=mp_slasher] run scoreboard players set @s mp_cooldown 60
execute if entity @e[tag=mp_alive,tag=!mp_killer,distance=..4] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1

# snapshot the single nearest valid target, Protected or not, before checking
# Protected status - checking the broader selector twice (once per branch)
# could let a second-nearest non-Protected target also match and get
# eliminated in the same Strike (ADR 0024)
execute as @e[tag=mp_alive,tag=!mp_killer,distance=..4,sort=nearest,limit=1] run tag @s add mp_strike_target

execute if entity @e[tag=mp_strike_target,tag=mp_bodyguard_target] run tellraw @s [{"text":"[Murder Party] Your target was protected!","color":"red"}]
execute as @e[tag=mp_strike_target,tag=mp_bodyguard_target] run tag @s remove mp_bodyguard_target

execute as @e[tag=mp_strike_target,tag=!mp_bodyguard_target] run function murder_party:weapon/eliminate_target

tag @e[tag=mp_strike_target] remove mp_strike_target
