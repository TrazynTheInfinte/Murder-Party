# @s = the Innocent whose pick lost a collision. Picks a random still-
# unclaimed Role (see claim_*.mcfunction, which tags the marker mp_cr_claimed
# the instant a Role is taken) - matches nothing, a safe no-op leaving them a
# normal Innocent, if all three are already claimed by others (ADR 0014)
tag @s add mp_cr_target

execute as @e[tag=mp_cr_opt,tag=!mp_cr_claimed,sort=random,limit=1] run function murder_party:civilian/reassign_dispatch

tag @e[tag=mp_cr_target] remove mp_cr_target
