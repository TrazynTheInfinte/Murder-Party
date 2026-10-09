# @s = this Round's Neutral. Kit (the target-locked knife) comes in a later
# pass - this is assignment only, including picking the target.
tag @s add mp_hitman

# target pool is every other living Participant - the Killer is a valid pick
execute as @e[tag=mp_alive,tag=!mp_hitman,sort=random,limit=1] run tag @s add mp_hitman_target

tellraw @s [{"text":"[Murder Party] You are the Hitman. Your target: ","color":"light_purple","bold":true},{"selector":"@e[tag=mp_hitman_target]","color":"red"}]
execute as @e[tag=mp_hitman_target] run tellraw @s [{"text":"[Murder Party] Someone has a Hit out on you. Watch your back.","color":"red","bold":true}]
