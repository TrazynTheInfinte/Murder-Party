tellraw @s [{"text":"[Murder Party] Choose a Civilian Role (or decline):","color":"gold","bold":true}]
tellraw @s [{"text":"Noisemaker","color":"yellow"},{"text":" - your death alerts everyone ","color":"gray"},{"text":"[Choose]","color":"green","clickEvent":{"action":"run_command","value":"/function murder_party:civilian/choose_noisemaker"}}]
tellraw @s [{"text":"Captain","color":"yellow"},{"text":" - visible to all, can call meetings from anywhere ","color":"gray"},{"text":"[Choose]","color":"green","clickEvent":{"action":"run_command","value":"/function murder_party:civilian/choose_captain"}}]
tellraw @s [{"text":"[No thanks]","color":"gray","clickEvent":{"action":"run_command","value":"/function murder_party:civilian/decline"}}]
