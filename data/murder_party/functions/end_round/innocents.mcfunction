# strip the disguise first - covers the Round Timer expiring with the Killer
# still alive and never eliminated, which no other path already handles for
# us (every elimination path already strips this before getting here)
execute if score #mp mp_state matches 1 as @e[tag=mp_masked_killer] run clear @s id_mask:id_mask
execute if score #mp mp_state matches 1 as @e[tag=mp_slasher] run clear @s id_mask:id_mask

execute if score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] Innocents win! ","color":"green","bold":true},{"text":"The Killer was ","color":"gray"},{"selector":"@e[tag=mp_killer]","color":"dark_red"},{"text":".","color":"gray"}]
execute if score #mp mp_state matches 1 run function murder_party:end_round/reset
