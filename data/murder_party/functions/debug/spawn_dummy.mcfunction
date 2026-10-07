summon minecraft:villager ~ ~ ~ {NoAI:1b,Silent:1b,CustomName:'{"text":"Test Dummy"}',CustomNameVisible:1b,Tags:["mp_joined","mp_test_dummy"],PersistenceRequired:1b}
tellraw @s [{"text":"[Murder Party] Test Dummy summoned.","color":"gray"}]
