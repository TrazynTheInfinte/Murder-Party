# returns from a Meeting phase to the active-round state without running
# check_win, so a subsequent full Round cancellation can take over cleanly
tag @e[tag=mp_alive] remove mp_has_voted
scoreboard players set #mp mp_state 1
