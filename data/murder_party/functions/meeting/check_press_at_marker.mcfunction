execute unless entity @s[tag=mp_button_on] if block ~ ~ ~ securitycraft:panic_button[powered=true] run function murder_party:meeting/on_press
execute if entity @s[tag=mp_button_on] unless block ~ ~ ~ securitycraft:panic_button[powered=true] run tag @s remove mp_button_on
