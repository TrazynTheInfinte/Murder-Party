gamerule sendCommandFeedback false

scoreboard objectives add mp_state dummy
scoreboard objectives add mp_timer dummy
scoreboard objectives add mp_count dummy
scoreboard objectives add mp_ready_phase dummy
scoreboard objectives add mp_cooldown dummy
scoreboard objectives add mp_subtick dummy
scoreboard objectives add mp_countdown dummy
scoreboard objectives add mp_meeting_timer dummy
scoreboard objectives add mp_vote_slot dummy
scoreboard objectives add mp_vote dummy
scoreboard objectives add mp_tally dummy
scoreboard objectives add mp_slot_counter dummy
scoreboard objectives add mp_pos_x dummy
scoreboard objectives add mp_pos_y dummy
scoreboard objectives add mp_pos_z dummy
scoreboard objectives add mp_dist_sq dummy
scoreboard objectives add mp_security_radius dummy
scoreboard objectives add mp_radius_sq dummy

team add mp_hidden
team modify mp_hidden nametagVisibility never
team modify mp_hidden color gray

# the Captain's one deliberate exception to the hidden-nametag rule
team add mp_captain_visible
team modify mp_captain_visible nametagVisibility always
team modify mp_captain_visible prefix {"text":"[captain] ","color":"gold"}

scoreboard players set #mp mp_state 0
scoreboard players set #mp mp_timer 0
scoreboard players set #mp mp_subtick 0
scoreboard players set #mp mp_ready_phase 0

# only sets a default the first time ever - a custom radius the admin set
# survives every later /reload instead of being clobbered back to 15
execute unless score #mp mp_security_radius matches -2147483648..2147483647 run scoreboard players set #mp mp_security_radius 15

tellraw @a [{"text":"[Murder Party] datapack loaded","color":"gray"}]
