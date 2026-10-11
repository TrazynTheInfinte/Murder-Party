# sends everyone a clickable Join/Leave Queue button - exactly the same
# command the button fires (/function murder_party:join or :leave) a player
# could already type themselves, just without having to tab-complete through
# every other function in the datapack to find it

# excludes anyone currently mid-Round (alive or already-eliminated-but-not-
# yet-reset still carries mp_participant until end_round/reset_one) - they're
# not "not queued", they're just not at a decision point right now
execute as @a[tag=!mp_joined,tag=!mp_participant] run tellraw @s [{"text":"[Murder Party] Want in on the next round? ","color":"gray"},{"text":"[Join Queue]","color":"green","clickEvent":{"action":"run_command","value":"/function murder_party:join"}}]

execute as @a[tag=mp_joined] run tellraw @s [{"text":"[Murder Party] You're queued for the next round. ","color":"gray"},{"text":"[Leave Queue]","color":"red","clickEvent":{"action":"run_command","value":"/function murder_party:leave"}}]
