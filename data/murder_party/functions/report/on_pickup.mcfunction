# clear the item and revoke the advancement first - report/trigger teleports
# everyone to the Meeting Point, and nothing about that should get a chance
# to run before this Participant's own inventory is cleaned up
clear @s minecraft:paper{MurderPartyReportItem:1b}
advancement revoke @s only murder_party:report_item_picked_up

execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run function murder_party:report/trigger
