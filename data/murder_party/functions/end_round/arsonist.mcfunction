# @s = Arsonist, who just ignited
tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s","color":"light_purple"},{"text":" burned everyone to the ground and wins as the Arsonist!","color":"dark_red","bold":true}]
function murder_party:end_round/reset
