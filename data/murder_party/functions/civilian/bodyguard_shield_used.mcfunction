execute if score #mp mp_state matches 1 if entity @s[tag=mp_bodyguard,tag=mp_alive] run function murder_party:civilian/bodyguard_pick_target
advancement revoke @s only murder_party:bodyguard_shield_used
