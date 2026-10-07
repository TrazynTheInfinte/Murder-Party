execute if score #mp mp_subtick matches 0 run title @a title [{"score":{"name":"#mp","objective":"mp_countdown"},"color":"yellow","bold":true}]
execute if score #mp mp_subtick matches 0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1

scoreboard players add #mp mp_subtick 1
execute if score #mp mp_subtick matches 20.. run scoreboard players set #mp mp_subtick 0
execute if score #mp mp_subtick matches 0 run scoreboard players remove #mp mp_countdown 1

execute if score #mp mp_countdown matches 0 run function murder_party:start_round_begin
