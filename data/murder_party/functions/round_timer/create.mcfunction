# @s = called from start_round_begin, after mp_timer is already set for the
# Round - refresh (below) fills in the real text immediately after this
bossbar add murder_party:round_timer [{"text":"Round Timer"}]
bossbar set murder_party:round_timer players @a
bossbar set murder_party:round_timer max 6000
bossbar set murder_party:round_timer color yellow
bossbar set murder_party:round_timer visible true

function murder_party:round_timer/refresh
