# @s = Arsonist, confirmed everyone else is Doused by the caller
tag @s add mp_arsonist_ready
clear @s minecraft:glass_bottle{MurderPartyGasolineCan:1b}
give @s minecraft:flint_and_steel{MurderPartyArsonistIgnite:1b} 1
tellraw @s [{"text":"[Murder Party] Everyone is doused. The next Meeting - called by anyone, for any reason - will ignite them all.","color":"light_purple","bold":true}]
