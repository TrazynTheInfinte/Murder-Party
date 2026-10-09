# @s = the Hitman, converting because their target died by other means
clear @s simpleknives:iron_knife{MurderPartyHitmanWeapon:1b}
tag @s remove mp_hitman

tag @s add mp_jester
give @s simpleknives:iron_knife{MurderPartyJesterDecoy:1b} 1
tellraw @s [{"text":"[Murder Party] Your target is dead. You are now the Jester - get yourself voted out.","color":"light_purple","bold":true}]
