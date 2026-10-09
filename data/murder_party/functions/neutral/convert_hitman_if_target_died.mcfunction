# @s = a Participant who just died by something OTHER than the Hitman's own
# knife (that path goes through weapon/hitman_eliminate_target.mcfunction
# instead, which is a win, not a conversion). If @s was the Hitman's target,
# the Hitman - a different living entity - converts into a Jester (ADR 0019).
# Must be called while @s still carries mp_hitman_target, before it's removed.
execute if entity @s[tag=mp_hitman_target] as @e[tag=mp_hitman] run function murder_party:neutral/hitman_to_jester
