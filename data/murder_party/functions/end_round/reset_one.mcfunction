clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
scoreboard players set @s mp_cooldown 0
tag @s remove mp_weapon_drawn

clear @s id_mask:id_mask
tag @s remove mp_masked_killer

clear @s create:linked_controller
tag @s remove mp_saboteur
tag @s remove mp_killer_variant_chosen

clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
tag @s remove mp_vigilante

tag @s remove mp_noisemaker

clear @s minecraft:goat_horn{MurderPartyCaptainHorn:1b}
tag @s remove mp_captain

tag @s remove mp_civilian_role_chosen

tag @s remove mp_meeting_used
tag @s remove mp_has_voted
scoreboard players set @s mp_vote 0
scoreboard players set @s mp_vote_slot 0

tag @s remove mp_alive
tag @s remove mp_killer
tag @s remove mp_spectating
tag @s remove mp_participant
team leave @s
gamemode survival @s
effect clear @s
effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation 1 255 true
execute at @e[tag=mp_lobby_point,limit=1] run tp @s ~ ~ ~
