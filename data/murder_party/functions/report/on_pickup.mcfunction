execute if score #mp mp_state matches 1 if entity @s[tag=mp_alive] run function murder_party:report/trigger

clear @s minecraft:paper{MurderPartyReportItem:1b}
advancement revoke @s only murder_party:report_item_picked_up
