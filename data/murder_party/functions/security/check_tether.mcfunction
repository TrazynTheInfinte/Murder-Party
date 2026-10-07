# checks the whole hotbar+main-inventory list in one go (cheap), plus offhand
# separately via the equipment predicate (armor slots are a non-issue - the
# game won't let a Camera Monitor be worn there)
execute as @a[nbt={Inventory:[{id:"securitycraft:camera_monitor",tag:{MurderPartySecurityMonitor:1b}}]}] run function murder_party:security/check_tether_as_holder
execute as @a[predicate=murder_party:holding_monitor_offhand] run function murder_party:security/check_tether_as_holder
