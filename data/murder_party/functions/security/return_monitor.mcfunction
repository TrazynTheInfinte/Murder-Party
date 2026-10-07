# copy preserves the exact NBT (camera bindings included) from wherever the
# holder actually has it into the chest, then clear removes it from them
# regardless of whether the copy itself already did so - safe either way,
# never duplicates. Each branch below is gated on confirming the Monitor is
# actually in that exact slot, so we never copy the wrong item into the chest.

execute at @e[tag=mp_security_room,limit=1] if predicate murder_party:holding_monitor_offhand run item replace block ~ ~ ~ container.0 from entity @s weapon.offhand
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:0b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.0
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:1b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.1
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:2b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.2
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:3b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.3
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:4b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.4
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:5b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.5
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:6b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.6
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:7b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.7
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:8b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s hotbar.8
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:9b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.0
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:10b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.1
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:11b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.2
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:12b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.3
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:13b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.4
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:14b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.5
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:15b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.6
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:16b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.7
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:17b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.8
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:18b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.9
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:19b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.10
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:20b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.11
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:21b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.12
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:22b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.13
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:23b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.14
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:24b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.15
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:25b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.16
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:26b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.17
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:27b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.18
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:28b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.19
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:29b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.20
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:30b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.21
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:31b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.22
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:32b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.23
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:33b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.24
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:34b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.25
execute at @e[tag=mp_security_room,limit=1] if entity @s[nbt={Inventory:[{Slot:35b,id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run item replace block ~ ~ ~ container.0 from entity @s inventory.26

clear @s securitycraft:camera_monitor{MurderPartySecurityMonitor:1b}
tellraw @s [{"text":"[Murder Party] The Monitor was returned to the Security Room.","color":"yellow"}]
