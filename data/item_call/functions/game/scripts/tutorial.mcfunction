schedule function item_call:game/scripts/tutorial 1t
scoreboard players add .tutorial ic_timers 1
#
execute if score .tutorial ic_timers matches 1 run effect give @a[tag=ic_player] blindness 20 10 true
execute if score .tutorial ic_timers matches 1 run effect give @a[tag=ic_player] slowness 20 10 true
execute if score .tutorial ic_timers matches 1 run effect give @a[tag=ic_player] jump_boost 20 200 true
execute if score .tutorial ic_timers matches 1 run clear @a[tag=ic_player]
execute if score .tutorial ic_timers matches 1 run gamemode adventure @a[tag=ic_player]
execute if score .tutorial ic_timers matches 1 run gamemode spectator @a[tag=ic_spectator]
execute if score .tutorial ic_timers matches 1 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 1 run title @a title [{"text":"Welcome to ","color":"aqua"},{"text":"Itemcall","color":"light_purple"}]
execute if score .tutorial ic_timers matches 1 run title @a subtitle [{"text": " "}]
execute if score .tutorial ic_timers matches 1 run title @a times 0 60 0
# spectator
execute if score .tutorial ic_timers matches 41 run title @a[tag=ic_spectator] title [{"text":"You are currently","color":"aqua"},{"text":" spectating","color":"light_purple"}]
execute if score .tutorial ic_timers matches 41 run title @a[tag=ic_spectator] times 0 40 0
execute if score .tutorial ic_timers matches 41 run playsound minecraft:block.wooden_button.click_on master @a[tag=ic_spectator] ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 81 run title @a[tag=ic_spectator] title [{"text":"Use your ","color":"aqua"},{"text":"number keys","color":"light_purple"}]
execute if score .tutorial ic_timers matches 81 run title @a[tag=ic_spectator] subtitle [{"text":"to ","color":"aqua"},{"text":"teleport ","color":"light_purple"},{"text": "to other ","color": "aqua"},{"text": "players","color": "light_purple"}]
execute if score .tutorial ic_timers matches 81 run title @a[tag=ic_spectator] times 0 70 0
execute if score .tutorial ic_timers matches 81 run playsound minecraft:block.wooden_button.click_on master @a[tag=ic_spectator] ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 151 run title @a[tag=ic_spectator] title [{"text": "Spectators ","color": "light_purple"},{"text": "cannot","color": "red"}]
execute if score .tutorial ic_timers matches 151 run title @a[tag=ic_spectator] subtitle [{"text": "interact ","color": "light_purple"},{"text": "with players or ","color": "aqua"},{"text": "vote","color": ""}]
execute if score .tutorial ic_timers matches 151 run playsound minecraft:block.wooden_button.click_on master @a[tag=ic_spectator] ~ ~ ~ 1000 1

# player
execute if score .tutorial ic_timers matches 41 run playsound minecraft:block.wooden_button.click_on master @a[tag=ic_player] ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 41 run title @a[tag=ic_player] title [{"text":"Your goal is","color":"aqua"},{"text":" simple","color":"light_purple"}]
execute if score .tutorial ic_timers matches 41 run title @a[tag=ic_player] times 0 60 0
execute if score .tutorial ic_timers matches 71 run playsound minecraft:block.wooden_button.click_on master @a[tag=ic_player] ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 71 run title @a[tag=ic_player] title [{"text":"Collect the requested ","color":"aqua"},{"text":"item","color":"light_purple"}]
execute if score .tutorial ic_timers matches 71 run title @a[tag=ic_player] times 0 60 0
execute if score .tutorial ic_timers matches 121 run playsound minecraft:block.wooden_button.click_on master @a[tag=ic_player] ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 121 run title @a[tag=ic_player] title {"text":"All players","color":"red"}
execute if score .tutorial ic_timers matches 121 run title @a[tag=ic_player] subtitle [{"text": "have the same ","color": "aqua"},{"text": "item call","color": "light_purple"}]
execute if score .tutorial ic_timers matches 121 run title @a[tag=ic_player] times 0 60 0
execute if score .tutorial ic_timers matches 151 run playsound minecraft:block.wooden_button.click_on master @a[tag=ic_player] ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 151 run title @a[tag=ic_player] title {"text":"Rarer items","color":"blue"}
execute if score .tutorial ic_timers matches 151 run title @a[tag=ic_player] subtitle [{"text": "give more ","color": "aqua"},{"text": "points","color": "light_purple"}]
execute if score .tutorial ic_timers matches 151 run title @a[tag=ic_player] times 0 60 0
execute if score .tutorial ic_timers matches 241 run playsound minecraft:block.wooden_button.click_on master @a[tag=ic_player] ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 241 run title @a[tag=ic_player] title {"text":"Good luck","color":"aqua"}
execute if score .tutorial ic_timers matches 241 run title @a[tag=ic_player] subtitle [{"text": " "}]
execute if score .tutorial ic_timers matches 241 run title @a[tag=ic_player] times 0 60 30


execute if score .tutorial ic_timers matches 201 run playsound minecraft:block.wooden_button.click_on master @a ~ ~ ~ 1000 1
execute if score .tutorial ic_timers matches 201 if score .win_method ic_gamedata matches 1 run title @a title {"text":"Player","color":"light_purple"}
execute if score .tutorial ic_timers matches 201 if score .win_method ic_gamedata matches 1 run title @a subtitle [{"text":"to achieve ","color":"aqua"},{"score":{"name":".win_amount","objective":"ic_gamedata"},"color":"light_purple"},{"text":" points","color":"aqua"},{"text":" wins","color":"light_purple"}]
execute if score .tutorial ic_timers matches 201 if score .win_method ic_gamedata matches 2 run title @a title {"text":"Player","color":"light_purple"}
execute if score .tutorial ic_timers matches 201 if score .win_method ic_gamedata matches 2 run title @a subtitle [{"text":"with the highest score","color":"light_purple"},{"text":"after ","color":"aqua"},{"score":{"name":".win_amount","objective":"ic_gamedata"},"color":"light_purple"},{"text":" rounds","color":"aqua"},{"text":" wins","color":"light_purple"}]
execute if score .tutorial ic_timers matches 201 run title @a times 0 60 0

#
execute if score .tutorial ic_timers matches 241 run gamemode survival @a[tag=ic_player]
execute if score .tutorial ic_timers matches 241 run effect clear @a[tag=ic_player]
execute if score .tutorial ic_timers matches 241 run schedule function item_call:game/scripts/start_round 3s
execute if score .tutorial ic_timers matches 241 run scoreboard players enable @a[tag=ic_player] ic_vote

execute if score .tutorial ic_timers matches 241 run schedule clear item_call:game/scripts/tutorial
execute if score .tutorial ic_timers matches 241 run scoreboard players reset .tutorial ic_timers