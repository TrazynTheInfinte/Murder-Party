gamerule sendCommandFeedback false

scoreboard objectives add mp_state dummy
scoreboard objectives add mp_timer dummy
scoreboard objectives add mp_count dummy
scoreboard objectives add mp_cooldown dummy
scoreboard objectives add mp_subtick dummy

team add mp_hidden
team modify mp_hidden nametagVisibility never
team modify mp_hidden color gray

scoreboard players set #mp mp_state 0
scoreboard players set #mp mp_timer 0
scoreboard players set #mp mp_subtick 0

tellraw @a [{"text":"[Murder Party] datapack loaded","color":"gray"}]
