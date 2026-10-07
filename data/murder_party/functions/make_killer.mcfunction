tag @s add mp_killer
scoreboard players set @s mp_cooldown 60
give @s simpleknives:iron_knife{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],MurderPartyWeapon:1b} 1
tellraw @s [{"text":"[Murder Party] You are the Killer.","color":"dark_red","bold":true}]
