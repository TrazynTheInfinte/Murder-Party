# recomputes the bar's fill, color, and mm:ss text from the current mp_timer
# value - called every second during free play, and once more right after a
# Meeting ends to restore the countdown display over "Meeting in progress"
execute store result bossbar murder_party:round_timer value run scoreboard players get #mp mp_timer

execute if score #mp mp_timer matches 1200.. run bossbar set murder_party:round_timer color yellow
execute if score #mp mp_timer matches ..1199 run bossbar set murder_party:round_timer color red

scoreboard players operation #mp mp_timer_seconds = #mp mp_timer
scoreboard players operation #mp mp_timer_seconds /= #mp mp_const_ticks_per_second

scoreboard players operation #mp mp_timer_minutes = #mp mp_timer_seconds
scoreboard players operation #mp mp_timer_minutes /= #mp mp_const_seconds_per_minute

scoreboard players operation #mp mp_timer_seconds %= #mp mp_const_seconds_per_minute

execute if score #mp mp_timer_seconds matches 10.. run bossbar set murder_party:round_timer name [{"text":"Round Timer: ","color":"gold"},{"score":{"name":"#mp","objective":"mp_timer_minutes"}},{"text":":"},{"score":{"name":"#mp","objective":"mp_timer_seconds"}}]
execute if score #mp mp_timer_seconds matches ..9 run bossbar set murder_party:round_timer name [{"text":"Round Timer: ","color":"gold"},{"score":{"name":"#mp","objective":"mp_timer_minutes"}},{"text":":0"},{"score":{"name":"#mp","objective":"mp_timer_seconds"}}]
