# corpse + inventory wipe only applies to real players - the corpse mod's
# command requires a real player and would error on a Test Dummy
execute unless entity @s[tag=mp_test_dummy] run clear @s
execute unless entity @s[tag=mp_test_dummy] run corpse test
execute unless entity @s[tag=mp_test_dummy] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_corpse_marker"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}

execute unless entity @s[tag=mp_test_dummy] if entity @e[tag=mp_masked_killer] run schedule function murder_party:corpse/remove_short 400 append
execute unless entity @s[tag=mp_test_dummy] unless entity @e[tag=mp_masked_killer] run schedule function murder_party:corpse/remove_long 2400 append

# Masked Killer only: grant a Mask disguised as the victim - dispatch by the
# victim's own exact name, since there's no way to inject a runtime-only-known
# string into NBT without macros (see ADR 0011)
execute if entity @e[tag=mp_masked_killer] if entity @s[name=MKRFireDragon] run function murder_party:mask/grant_mkrfiredragon
execute if entity @e[tag=mp_masked_killer] if entity @s[name=THRIceDragon] run function murder_party:mask/grant_thricedragon
execute if entity @e[tag=mp_masked_killer] if entity @s[name=spawnvillager] run function murder_party:mask/grant_spawnvillager
execute if entity @e[tag=mp_masked_killer] if entity @s[name=ninjamwuppy] run function murder_party:mask/grant_ninjamwuppy
execute if entity @e[tag=mp_masked_killer] if entity @s[name=cyanoc_stellerii] run function murder_party:mask/grant_cyanoc_stellerii
execute if entity @e[tag=mp_masked_killer] if entity @s[name=Nova_Zenith] run function murder_party:mask/grant_nova_zenith
execute if entity @e[tag=mp_masked_killer] if entity @s[name=mister__woo] run function murder_party:mask/grant_mister__woo

tag @s remove mp_alive
tag @s add mp_spectating
gamemode spectator @s
tellraw @s [{"text":"[Murder Party] You were struck by the Killer's knife.","color":"red"}]

# gamemode spectator is a no-op on a Test Dummy (not a player), leaving it
# visibly standing there with no sign it was eliminated; just remove it
execute if entity @s[tag=mp_test_dummy] run kill @s

function murder_party:check_win
