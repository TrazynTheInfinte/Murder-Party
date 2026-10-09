# if the Arsonist already has everyone Doused, the next Meeting - called by
# anyone, for any reason - ignites instead of proceeding normally. Actually
# using the Flint and Steel doesn't work: Adventure mode blocks it, and flint
# and steel has no "use" action at all without a block to target anyway.
execute if entity @e[tag=mp_arsonist_ready] as @e[tag=mp_arsonist_ready] run function murder_party:neutral/arsonist_ignite
execute unless entity @e[tag=mp_arsonist_ready] run function murder_party:meeting/start_discussion
