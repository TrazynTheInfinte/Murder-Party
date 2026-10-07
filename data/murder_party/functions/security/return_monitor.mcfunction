# copy preserves the exact NBT (camera bindings included) from the holder's
# hand into the chest, then clear removes it from them regardless of whether
# the copy itself already did so - safe either way, never duplicates
execute at @e[tag=mp_security_room,limit=1] run item replace block ~ ~ ~ container.0 from entity @s weapon.mainhand

clear @s securitycraft:camera_monitor{MurderPartySecurityMonitor:1b}
tellraw @s [{"text":"[Murder Party] The Monitor was returned to the Security Room.","color":"yellow"}]
