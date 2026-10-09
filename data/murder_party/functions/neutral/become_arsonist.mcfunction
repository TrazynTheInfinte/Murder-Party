# @s = this Round's Neutral
tag @s add mp_arsonist
scoreboard players set @s mp_arsonist_cooldown 0
give @s minecraft:glass_bottle{MurderPartyGasolineCan:1b} 1
tellraw @s [{"text":"[Murder Party] You are the Arsonist. Douse everyone, then light the match.","color":"light_purple","bold":true}]
