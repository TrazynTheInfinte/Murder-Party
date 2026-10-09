# the Corpse is still alive here (looting it doesn't remove it) - read its real
# identity straight from its own OwnerName NBT. Deliberately not the Reporter's
# real name if they're a disguised Masked Killer - see ADR 0016
tellraw @a [{"text":"[Murder Party] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" found ","color":"gray"},{"nbt":"OwnerName","entity":"@e[type=playercorpse:corpse,distance=..6,sort=nearest,limit=1]","color":"dark_red"},{"text":"'s body!","color":"gray"}]

# Reporting never spends the Reporter's Meeting Call - see ADR 0015 - so this
# jumps straight to meeting/start instead of going through attribute_press
function murder_party:meeting/start
