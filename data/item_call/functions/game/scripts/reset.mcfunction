schedule clear item_call:game/scripts/end_game
scoreboard players reset .end ic_timers
scoreboard players reset .item ic_gamedata
scoreboard players reset .rank ic_gamedata
scoreboard players reset .vote_needed ic_gamedata
scoreboard players reset .max ic_gamedata
scoreboard players reset .players ic_gamedata
scoreboard objectives remove ic_jointeam
scoreboard objectives remove ic_menu
scoreboard objectives remove ic_points
scoreboard objectives remove ic_vote
scoreboard objectives add ic_jointeam trigger
scoreboard objectives add ic_menu trigger
scoreboard objectives add ic_points dummy {"text":"Points","color":"aqua","bold":true}
scoreboard objectives add ic_vote trigger
scoreboard players reset .choose ic_timers
scoreboard players reset .start ic_timers
scoreboard players reset .vote ic_timers
scoreboard players set .round ic_gamedata 1
tag @a remove 1st
tag @a remove 2nd
tag @a remove 3rd
tag @a remove ranked
tag @a remove vote_caller
tellraw @a[tag=ic_op] [{"text":"[Itemcall] ","color":"aqua"},{"text":"Reset success. You may now access the ","color":"gray"},{"text":"menu","color":"yellow","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ic_menu set 1"}}]
scoreboard players set .active ic_gamedata 0
clear @a barrier{blocker:1b}