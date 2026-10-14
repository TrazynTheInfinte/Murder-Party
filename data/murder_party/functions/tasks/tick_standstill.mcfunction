# "at @s" matters here - "as" alone reassigns the executor but not the
# position, and standstill_check_complete's distance=.. check needs the
# participant's own actual position, not whatever position this was called from
execute as @e[tag=mp_alive] at @s run function murder_party:tasks/tick_standstill_one
