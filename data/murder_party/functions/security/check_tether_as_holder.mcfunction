# radius is a fixed constant (15 blocks), not admin-adjustable at runtime -
# a true dynamic radius would need a score-to-score distance comparison,
# which isn't worth the complexity for a value that rarely needs retuning
execute at @e[tag=mp_security_room,limit=1] unless entity @s[distance=..15] run function murder_party:security/return_monitor
