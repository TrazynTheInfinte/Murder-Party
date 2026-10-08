tag @s add mp_killer
scoreboard players set @s mp_cooldown 60
give @s simpleknives:iron_knife{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],MurderPartyWeapon:1b} 1

tellraw @s [{"text":"[Murder Party] You are the Killer. Choose your Killer Variant (defaults to Saboteur in 5s):","color":"dark_red","bold":true}]
tellraw @s [{"text":"Masked Killer","color":"yellow"},{"text":" - corpses vanish fast, wear a disguise of your latest victim ","color":"gray"},{"text":"[Choose]","color":"green","clickEvent":{"action":"run_command","value":"/function murder_party:killer/choose_masked"}}]
tellraw @s [{"text":"Saboteur","color":"yellow"},{"text":" - a personal kit of remote-triggered sabotage devices ","color":"gray"},{"text":"[Choose]","color":"green","clickEvent":{"action":"run_command","value":"/function murder_party:killer/choose_saboteur"}}]
