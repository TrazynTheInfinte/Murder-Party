# the Slasher can't be voted out while mp_slasher_vote_immune holds - this
# plays out identically to a tie (see eject_slot_1.mcfunction)
execute as @e[tag=mp_alive,tag=mp_slasher_vote_immune,scores={mp_vote_slot=4}] run function murder_party:meeting/no_ejection
execute as @e[tag=mp_alive,tag=!mp_slasher_vote_immune,scores={mp_vote_slot=4}] run function murder_party:meeting/eject_target
