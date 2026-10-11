tellraw @s [{"text":"[Murder Party] Choose a Civilian Role (or decline):","color":"gold","bold":true}]
tellraw @s [{"text":"Noisemaker","color":"yellow"},{"text":" - your death alerts everyone ","color":"gray"},{"text":"[Choose]","color":"green","clickEvent":{"action":"run_command","value":"/function murder_party:civilian/choose_noisemaker"}}]
tellraw @s [{"text":"Bodyguard","color":"yellow"},{"text":" - pick someone to save from one hit ","color":"gray"},{"text":"[Choose]","color":"green","clickEvent":{"action":"run_command","value":"/function murder_party:civilian/choose_bodyguard"}}]
tellraw @s [{"text":"[No thanks]","color":"gray","clickEvent":{"action":"run_command","value":"/function murder_party:civilian/decline"}}]
