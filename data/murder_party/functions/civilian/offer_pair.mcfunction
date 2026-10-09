# @s = one specific Innocent (called once per Innocent from countdown_start).
# mp_cr_target temporarily marks them so we can find our way back to them
# after rebinding @s to inspect the randomly-excluded marker below - safe
# since @e[tag=mp_alive,tag=!mp_killer] processes entities one at a time, not
# in parallel, so only one entity ever holds this tag at once
tag @s add mp_cr_target

execute as @e[tag=mp_cr_opt,sort=random,limit=1] run function murder_party:civilian/exclude_dispatch

tag @e[tag=mp_cr_target] remove mp_cr_target
