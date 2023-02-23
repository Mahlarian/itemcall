scoreboard players add .vote ic_timers 1
schedule function item_call:game/scripts/player_skip 1t

execute if score .vote ic_timers matches 1 run scoreboard players reset @a ic_vote
execute if score .vote ic_timers matches 1 run title @a title {"text":"Game Paused","color":"red"}
execute if score .vote ic_timers matches 1 run title @a subtitle {"text":"A vote is in progress","color":"white"}
execute if score .vote ic_timers matches 1 run title @a times 20 200 20
execute if score .vote ic_timers matches 1 run bossbar set item_call:status color red
execute if score .vote ic_timers matches 1 run bossbar set item_call:status value 1
execute if score .vote ic_timers matches 1 run scoreboard players reset @a[tag=ic_player] ic_vote
execute if score .vote ic_timers matches 1 run schedule clear item_call:game/scripts/item_check
execute if score .vote ic_timers matches 1 run tag @s add vote_caller
execute if score .vote ic_timers matches 1 store result score .vote_needed ic_gamedata run execute if entity @a[tag=ic_player] 
execute if score .vote ic_timers matches 2 run scoreboard players operation .vote_needed ic_gamedata /= .vote_div ic_gamedata
execute if score .vote ic_timers matches 2 if score .vote_needed ic_gamedata matches 0 run scoreboard players set .vote_needed ic_gamedata 1
execute if score .vote ic_timers matches 3 store result bossbar item_call:status max run scoreboard players get .vote_needed ic_gamedata
execute if score .vote ic_timers matches 3 run scoreboard players enable @a[tag=ic_player] ic_vote
execute if score .vote ic_timers matches 3 run tellraw @a [{"text":"A vote is in progress to skip this round\n","color":"red","bold":true},{"text":"Players needed to skip: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray","italic":true}]}},{"score":{"name":".vote_needed","objective":"ic_gamedata"},"color":"green","bold":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray","italic":true}]}},{"text":"\n","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray","italic":true}]}},{"text":"[Click to vote]","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Only click to vote yes\n"},{"text":"If you do not want to skip\nthe round, simply do nothing.","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/trigger ic_vote set 11"}}]
execute if score .vote ic_timers matches 4..204 as @a[tag=ic_player] if score @s ic_vote matches 11 run function item_call:menu/output/vote_11 
execute if score .vote ic_timers matches 4..204 store result bossbar item_call:status value run scoreboard players get .player_votes ic_gamedata
execute if score .vote ic_timers matches 4..204 run bossbar set item_call:status name [{"text":"Game paused - Votes needed to skip: ","color":"red"},{"score":{"name":".vote_needed","objective":"ic_gamedata"},"color":"gray","bold":true}]
execute if score .vote ic_timers matches 4..204 if score .vote_needed ic_gamedata matches ..0 run function item_call:game/scripts/vote_pass
execute if score .vote ic_timers matches 205 if score .vote_needed ic_gamedata matches 1.. run function item_call:game/scripts/vote_fail

execute if score .vote ic_timers matches 205.. run schedule clear item_call:game/scripts/player_skip
execute if score .vote ic_timers matches 205.. run scoreboard players set .vote ic_timers 0