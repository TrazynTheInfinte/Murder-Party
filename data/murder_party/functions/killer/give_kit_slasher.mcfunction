# @s = the Killer, confirmed to be the Slasher by the caller. Swaps the
# baseline knife (given unconditionally in make_killer.mcfunction) for a full
# Iron Sword, halves the Weapon Cooldown, puts on a fixed costume (not the
# Masked Killer's latest-victim Mask - this one never changes), and makes
# them permanently glow red for everyone to see.
clear @s simpleknives:iron_knife{MurderPartyWeapon:1b}
give @s minecraft:iron_sword{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}],MurderPartyWeapon:1b} 1
scoreboard players set @s mp_cooldown 30

item replace entity @s armor.head with id_mask:id_mask{MaskType:"player",display:{Name:'{"text":"JasonVoorhees"}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

team join mp_slasher_glow @s
effect give @s minecraft:glowing 1000000 0 true
