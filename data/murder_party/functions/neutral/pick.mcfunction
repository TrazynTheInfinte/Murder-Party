# the Killer is never eligible to also be the Neutral - everyone else alive is
execute as @e[tag=mp_alive,tag=!mp_killer,sort=random,limit=1] run function murder_party:neutral/pick_type
