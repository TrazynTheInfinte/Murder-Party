tag @s add mp_captain
tag @s add mp_civilian_role_chosen
tag @e[tag=mp_cr_opt,tag=mp_cr_captain] add mp_cr_claimed
tellraw @s [{"text":"[Murder Party] You chose: Captain.","color":"gold"}]
give @s minecraft:goat_horn{MurderPartyCaptainHorn:1b} 1
scoreboard players set @s mp_captain_horn_cooldown 0
