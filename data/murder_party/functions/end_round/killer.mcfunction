# strip the disguise first - otherwise the Killer's own Mask makes this
# announcement name the latest victim instead of the actual Killer
execute if score #mp mp_state matches 1 as @e[tag=mp_masked_killer] run clear @s id_mask:id_mask

execute if score #mp mp_state matches 1 run tellraw @a [{"text":"[Murder Party] The Killer wins! ","color":"dark_red","bold":true},{"text":"The Killer was ","color":"gray"},{"selector":"@e[tag=mp_killer]","color":"dark_red"},{"text":".","color":"gray"}]
execute if score #mp mp_state matches 1 run function murder_party:end_round/reset
