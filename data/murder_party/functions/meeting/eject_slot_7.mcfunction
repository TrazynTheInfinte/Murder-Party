# the Slasher can't be voted out - this plays out identically to a tie
execute as @e[tag=mp_alive,tag=mp_slasher,scores={mp_vote_slot=7}] run function murder_party:meeting/no_ejection
execute as @e[tag=mp_alive,tag=!mp_slasher,scores={mp_vote_slot=7}] run function murder_party:meeting/eject_target
