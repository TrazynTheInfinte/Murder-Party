# the Slasher can't be voted out while mp_slasher_vote_immune holds - this
# plays out identically to a tie. A Vigilante/Hitman knife can strip just
# this tag without eliminating them (weapon/vigilante_try_strike.mcfunction,
# weapon/hitman_try_strike.mcfunction), after which they vote like anyone else
execute as @e[tag=mp_alive,tag=mp_slasher_vote_immune,scores={mp_vote_slot=1}] run function murder_party:meeting/no_ejection
execute as @e[tag=mp_alive,tag=!mp_slasher_vote_immune,scores={mp_vote_slot=1}] run function murder_party:meeting/eject_target
