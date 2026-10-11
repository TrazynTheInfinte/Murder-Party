# @s = one specific Innocent (called once per Innocent from countdown_start).
# mp_cr_target temporarily marks them so we can find our way back to them
# after rebinding @s to inspect the picked markers below - safe since
# @e[tag=mp_alive,tag=!mp_killer] processes entities one at a time, not in
# parallel, so only one entity ever holds this tag at once
tag @s add mp_cr_target

# pick 2 distinct random Roles out of all 4 to show - a true random pair, not
# "exclude 1 of 3" (that only worked back when there were exactly 3 Roles to
# pick a pair from)
execute as @e[tag=mp_cr_opt,sort=random,limit=1] run tag @s add mp_cr_shown
execute as @e[tag=mp_cr_opt,tag=!mp_cr_shown,sort=random,limit=1] run tag @s add mp_cr_shown

function murder_party:civilian/show_pair_dispatch

tag @e[tag=mp_cr_shown] remove mp_cr_shown
tag @e[tag=mp_cr_target] remove mp_cr_target
