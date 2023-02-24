scoreboard objectives add ic_gamedata dummy
scoreboard objectives add ic_timers dummy
scoreboard objectives add ic_menu trigger
scoreboard objectives add ic_jointeam trigger
scoreboard objectives add ic_vote trigger
scoreboard objectives add ic_points dummy {"text":"Points","color":"aqua","bold":true}
bossbar add item_call:status {"text": "item_call"}
execute unless score .active ic_gamedata matches 0..1 run scoreboard players set .active ic_gamedata 0
execute unless score .win_method ic_gamedata matches 1..2 run scoreboard players set .win_method ic_gamedata 1
execute unless score .win_amount ic_gamedata matches 0..999 run scoreboard players set .win_amount ic_gamedata 5
execute unless score .show_points ic_gamedata matches 0..1 run scoreboard players set .show_points ic_gamedata 1
execute unless score .rand_spawn ic_gamedata matches 0..1 run scoreboard players set .rand_spawn ic_gamedata 1
execute unless score .spread_plyr ic_gamedata matches 0..1 run scoreboard players set .spread_plyr ic_gamedata 1
execute unless score .no_hoard ic_gamedata matches 0..1 run scoreboard players set .no_hoard ic_gamedata 1
execute unless score .vote_skip ic_gamedata matches 1..2 run scoreboard players set .vote_skip ic_gamedata 1
execute unless score .active ic_gamedata matches 0 run scoreboard players enable @a[tag=ic_op] ic_menu
execute unless score .vote_div ic_gamedata matches 1.. run scoreboard players set .vote_div ic_gamedata 2
schedule function item_call:d_load 3s