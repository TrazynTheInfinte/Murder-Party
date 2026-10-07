execute if entity @s[tag=mp_killer] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s"},{"text":" was ejected. They were the Killer!","color":"dark_red","bold":true}]
execute unless entity @s[tag=mp_killer] run tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s"},{"text":" was ejected. They were an Innocent.","color":"green"}]

execute if entity @s[tag=mp_killer] run clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}

tag @s remove mp_alive
tag @s remove mp_killer
tag @s add mp_spectating
gamemode spectator @s
execute if entity @s[tag=mp_test_dummy] run kill @s

function murder_party:meeting/conclude
