schedule function item_call:game/scripts/tutorial 1t
scoreboard players add .tutorial ic_timers 1
#
execute if score .tutorial ic_timers matches 1 run effect give @a[tag=ic_player] blindness 20 10 true
execute if score .tutorial ic_timers matches 1 run effect give @a[tag=ic_player] slowness 20 10 true
execute if score .tutorial ic_timers matches 1 run effect give @a[tag=ic_player] jump_boost 20 200 true
execute if score .tutorial ic_timers matches 1 run gamemode adventure @a[tag=ic_player]
execute if score .tutorial ic_timers matches 1 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 1 run title @a title [{"text":"Welcome to ","color":"aqua"},{"text":"Itemcall","color":"light_purple"}]
execute if score .tutorial ic_timers matches 1 run title @a subtitle [{"text": " "}]
execute if score .tutorial ic_timers matches 1 run title @a times 0 60 0
execute if score .tutorial ic_timers matches 41 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 41 run title @a title [{"text":"Your goal is","color":"aqua"},{"text":" simple","color":"light_purple"}]
execute if score .tutorial ic_timers matches 41 run title @a times 0 60 0
execute if score .tutorial ic_timers matches 71 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 71 run title @a title [{"text":"Collect the requested ","color":"aqua"},{"text":"item","color":"light_purple"}]
execute if score .tutorial ic_timers matches 71 run title @a times 0 60 0
execute if score .tutorial ic_timers matches 111 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 111 run title @a title {"text":"All players","color":"red"}
execute if score .tutorial ic_timers matches 111 run title @a subtitle [{"text": "have the same ","color": "aqua"},{"text": "item call","color": "light_purple"}]
execute if score .tutorial ic_timers matches 111 run title @a times 0 60 0
execute if score .tutorial ic_timers matches 141 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 141 run title @a title {"text":"Rarer items","color":"blue"}
execute if score .tutorial ic_timers matches 141 run title @a subtitle [{"text": "give more ","color": "aqua"},{"text": "points","color": "light_purple"}]
execute if score .tutorial ic_timers matches 141 run title @a times 0 60 0
execute if score .tutorial ic_timers matches 181 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 181 if score .win_method ic_gamedata matches 1 run title @a title {"text":"Player","color":"light_purple"}
execute if score .tutorial ic_timers matches 181 if score .win_method ic_gamedata matches 1 run title @p subtitle [{"text":"to achieve ","color":"aqua"},{"score":{"name":".win_amount","objective":"ic_gamedata"},"color":"light_purple"},{"text":" points","color":"aqua"},{"text":" wins","color":"light_purple"}]
execute if score .tutorial ic_timers matches 181 if score .win_method ic_gamedata matches 2 run title @a title {"text":"Player","color":"light_purple"}
execute if score .tutorial ic_timers matches 181 if score .win_method ic_gamedata matches 2 run title @p subtitle [{"text":"with the highest score","color":"light_purple"},{"text":"after ","color":"aqua"},{"score":{"name":".win_amount","objective":"ic_gamedata"},"color":"light_purple"},{"text":" rounds","color":"aqua"},{"text":" wins","color":"light_purple"}]
execute if score .tutorial ic_timers matches 181 run title @a times 0 60 0
execute if score .tutorial ic_timers matches 221 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 221 run title @a title {"text":"Good luck","color":"aqua"}
execute if score .tutorial ic_timers matches 221 run title @a subtitle [{"text": " "}]
execute if score .tutorial ic_timers matches 221 run title @a times 0 60 30
execute if score .tutorial ic_timers matches 221 run gamemode survival @a[tag=ic_player]
execute if score .tutorial ic_timers matches 221 run effect clear @a[tag=ic_player]
execute if score .tutorial ic_timers matches 221 run schedule function item_call:game/scripts/start_round 5s
execute if score .tutorial ic_timers matches 221 run scoreboard players enable @a[tag=ic_player] ic_vote

execute if score .tutorial ic_timers matches 221 run schedule clear item_call:game/scripts/tutorial
execute if score .tutorial ic_timers matches 221 run scoreboard players reset .tutorial ic_timers