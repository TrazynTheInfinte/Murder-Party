tag @s add mp_button_on

execute as @e[tag=mp_alive,sort=nearest,limit=1] run function murder_party:meeting/attribute_press
