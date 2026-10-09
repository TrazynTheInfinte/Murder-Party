# corpse + inventory wipe only applies to real players - the corpse mod's
# command requires a real player and would error on a Test Dummy
execute unless entity @s[tag=mp_test_dummy] run clear @s

# the corpse mod's "stuck weapon" display defaults to a plain Iron Sword
# whenever the victim's mainhand is empty (confirmed from the mod's own code) -
# briefly handing them a prop Iron Knife first makes it copy that instead, so
# the Corpse's stuck weapon matches the real Weapon's look
execute unless entity @s[tag=mp_test_dummy] run give @s simpleknives:iron_knife 1
execute unless entity @s[tag=mp_test_dummy] run corpse test
execute unless entity @s[tag=mp_test_dummy] run clear @s simpleknives:iron_knife
execute unless entity @s[tag=mp_test_dummy] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mp_corpse_marker"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}

# plant the Report Item in the Corpse's own lootable inventory (slot 9 is one
# of the mod's generic storage slots, not one of its equipment slots 0/36-40)
execute unless entity @s[tag=mp_test_dummy] at @s run data merge entity @e[type=playercorpse:corpse,distance=..1,limit=1] {Inventory:[{Slot:9b,Item:{id:"minecraft:paper",Count:1b,tag:{MurderPartyReportItem:1b,display:{Name:'{"text":"Written Report","italic":false}'}}}}]}

execute unless entity @s[tag=mp_test_dummy] if entity @e[tag=mp_masked_killer] run schedule function murder_party:corpse/remove_short 400 append
execute unless entity @s[tag=mp_test_dummy] unless entity @e[tag=mp_masked_killer] run schedule function murder_party:corpse/remove_long 2400 append

# Masked Killer only: grant a Mask disguised as the victim - dispatch by the
# victim's own exact name, since there's no way to inject a runtime-only-known
# string into NBT without macros (see ADR 0011)
execute if entity @e[tag=mp_masked_killer] if entity @s[name=MKRFireDragon] run function murder_party:mask/grant_mkrfiredragon
execute if entity @e[tag=mp_masked_killer] if entity @s[name=THRIceDragon] run function murder_party:mask/grant_thricedragon
execute if entity @e[tag=mp_masked_killer] if entity @s[name=spawnvillager] run function murder_party:mask/grant_spawnvillager
execute if entity @e[tag=mp_masked_killer] if entity @s[name=NinjaMwuppy] run function murder_party:mask/grant_ninjamwuppy
execute if entity @e[tag=mp_masked_killer] if entity @s[name=Cyanoc_Stellerii] run function murder_party:mask/grant_cyanoc_stellerii
execute if entity @e[tag=mp_masked_killer] if entity @s[name=Nova_Zenith] run function murder_party:mask/grant_nova_zenith
execute if entity @e[tag=mp_masked_killer] if entity @s[name=Mister__Woo] run function murder_party:mask/grant_mister__woo

# Noisemaker only: a global alarm instead of silence about who died
execute if entity @s[tag=mp_noisemaker] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1
execute if entity @s[tag=mp_noisemaker] run tellraw @a [{"text":"[Murder Party] ","color":"red"},{"selector":"@s"},{"text":" has died.","color":"red"}]

clear @s simpleknives:iron_knife{MurderPartyVigilanteWeapon:1b}
clear @s minecraft:goat_horn{MurderPartyCaptainHorn:1b}
clear @s simpleknives:iron_knife{MurderPartyJesterDecoy:1b}
clear @s simpleknives:iron_knife{MurderPartyHitmanWeapon:1b}
clear @s minecraft:glass_bottle{MurderPartyGasolineCan:1b}
clear @s minecraft:flint_and_steel{MurderPartyArsonistIgnite:1b}
execute if entity @s[tag=mp_arsonist] run tag @e[tag=mp_doused] remove mp_doused

# must run before mp_hitman_target would ever be stripped - it never is on
# this path today, but the check itself still needs to see it - see ADR 0019
function murder_party:neutral/convert_hitman_if_target_died

tag @s remove mp_alive
tag @s add mp_spectating
gamemode spectator @s
tellraw @s [{"text":"[Murder Party] You were struck by the Killer's knife.","color":"red"}]

# gamemode spectator is a no-op on a Test Dummy (not a player), leaving it
# visibly standing there with no sign it was eliminated; just remove it
execute if entity @s[tag=mp_test_dummy] run kill @s

function murder_party:check_win
