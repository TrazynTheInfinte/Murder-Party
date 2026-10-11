clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
clear @s minecraft:iron_sword{MurderPartyWeapon:1b}
scoreboard players set @s mp_cooldown 0
tag @s remove mp_weapon_drawn
tag @s remove mp_slasher

clear @s id_mask:id_mask
tag @s remove mp_masked_killer

clear @s create:linked_controller
tag @s remove mp_saboteur
tag @s remove mp_killer_variant_chosen

clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
scoreboard players set @s mp_vigilante_knife_cooldown 0
tag @s remove mp_vigilante

clear @s minecraft:shield{MurderPartyGuardBadge:1b}
tag @s remove mp_bodyguard
tag @s remove mp_bodyguard_target

tag @s remove mp_noisemaker

clear @s minecraft:goat_horn{MurderPartyCaptainHorn:1b}
scoreboard players set @s mp_captain_horn_cooldown 0
tag @s remove mp_captain

tag @s remove mp_civilian_role_chosen

clear @s simpleknives:iron_knife{MurderPartyJesterDecoy:1b}
clear @s simpleknives:iron_knife{MurderPartyHitmanWeapon:1b}
scoreboard players set @s mp_hitman_knife_cooldown 0
clear @s minecraft:glass_bottle{MurderPartyGasolineCan:1b}
clear @s minecraft:flint_and_steel{MurderPartyArsonistIgnite:1b}
scoreboard players set @s mp_arsonist_cooldown 0
tag @s remove mp_arsonist_ready
tag @s remove mp_doused
tag @s remove mp_neutral
tag @s remove mp_jester
tag @s remove mp_arsonist
tag @s remove mp_hitman
tag @s remove mp_hitman_target

clear @s minecraft:paper{MurderPartyReportItem:1b}

clear @s minecraft:spyglass{MurderPartyTaskSpyglass:1b}
scoreboard players set @s mp_task1_id 0
scoreboard players set @s mp_task2_id 0
scoreboard players set @s mp_task3_id 0
scoreboard players set @s mp_task1_done 0
scoreboard players set @s mp_task2_done 0
scoreboard players set @s mp_task3_done 0
scoreboard players set @s mp_task_standstill_ticks 0
tag @s remove mp_task_doer

tag @s remove mp_meeting_used
tag @s remove mp_has_voted
scoreboard players set @s mp_vote 0
scoreboard players set @s mp_vote_slot 0

tag @s remove mp_alive
tag @s remove mp_killer
tag @s remove mp_spectating
tag @s remove mp_participant
team leave @s
gamemode adventure @s
effect clear @s
effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation 1 255 true
execute at @e[tag=mp_lobby_point,limit=1] run tp @s ~ ~ ~

# stay queued for the next Round automatically - click the button below to
# opt out instead of rejoining every time
tag @s add mp_joined
tellraw @s [{"text":"[Murder Party] You're queued for the next round. ","color":"gray"},{"text":"[Leave Queue]","color":"red","clickEvent":{"action":"run_command","value":"/function murder_party:leave"}}]
