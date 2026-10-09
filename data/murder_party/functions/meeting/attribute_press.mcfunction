# checked before either branch mutates the tag - start.mcfunction no longer
# sets it itself, so this is now the only place that spends the Call
execute if entity @s[tag=mp_meeting_used] run function murder_party:meeting/reject
execute unless entity @s[tag=mp_meeting_used] run function murder_party:meeting/start
tag @s add mp_meeting_used
