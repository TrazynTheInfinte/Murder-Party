# all real joined players must be ready - @a never selects a Test Dummy
execute unless entity @a[tag=mp_joined,tag=!mp_ready] run function murder_party:start_round
