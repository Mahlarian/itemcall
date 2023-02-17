schedule function item_call:menu/start_game 1t
scoreboard players add .start ic_timers 1
# starting cinematic
execute if score .start ic_timers matches 1 as @a run function item_call:menu/clear
execute if score .start ic_timers matches 1 run tellraw @a [{"selector":"@s","color":"blue","bold":true},{"text":" has started the game!","color":"gray","bold":false}]
execute if score .start ic_timers matches 1 run bossbar set item_call:status visible true
execute if score .start ic_timers matches 1 run bossbar set item_call:status players @a
execute if score .start ic_timers matches 1 run bossbar set item_call:status color white
execute if score .start ic_timers matches 1 run bossbar set item_call:status max 10
execute if score .start ic_timers matches 1 run bossbar set item_call:status value 10
execute if score .start ic_timers matches 1 run bossbar set item_call:status name {"text":"Starting soon","color":"white"}
execute if score .start ic_timers matches 1 run tellraw @a[tag=ic_op] [{"text":"[Click]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_menu set 992"}},{"text":" to stop the game from starting","bold":false}]
execute if score .start ic_timers matches 1 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000 1.5
execute if score .start ic_timers matches 4 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000 1.6
execute if score .start ic_timers matches 8 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000 1.7
execute if score .start ic_timers matches 8 run bossbar set item_call:status name [{"text":"S","color":"aqua"},{"text":"tarting soon","color":"white"}]
execute if score .start ic_timers matches 11 run tellraw @a[team=!ic_player] [{"text":"Last chance to join player team!\n","color":"red","bold":true},{"text":"[Click to join]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam set 11"}}]
execute if score .start ic_timers matches 11 run tellraw @a[team=ic_player] [{"text":"Last chance to spectate!\n","color":"red","bold":true},{"text":"[Click to join]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam set 12"}}]
execute if score .start ic_timers matches 11 run title @a title {"text":"Itemcall","color":"aqua"}
execute if score .start ic_timers matches 11 run title @a subtitle [{"text":"A datapack creation by ","color":"light_purple"},{"text": "Mahlarian","color": "white"}]
execute if score .start ic_timers matches 11 run title @a times 20 60 20
execute if score .start ic_timers matches 11 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 16 run bossbar set item_call:status name [{"text":"St","color":"aqua"},{"text":"arting soon","color":"white"}]
execute if score .start ic_timers matches 24 run bossbar set item_call:status name [{"text":"Sta","color":"aqua"},{"text":"rting soon","color":"white"}]
execute if score .start ic_timers matches 31 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 31 run bossbar set item_call:status value 9
execute if score .start ic_timers matches 32 run bossbar set item_call:status name [{"text":"Star","color":"aqua"},{"text":"ting soon","color":"white"}]
execute if score .start ic_timers matches 40 run bossbar set item_call:status name [{"text":"Start","color":"aqua"},{"text":"ing soon","color":"white"}]
execute if score .start ic_timers matches 48 run bossbar set item_call:status name [{"text":"Starti","color":"aqua"},{"text":"ng soon","color":"white"}]
execute if score .start ic_timers matches 51 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 51 run bossbar set item_call:status value 8
execute if score .start ic_timers matches 56 run bossbar set item_call:status name [{"text":"Startin","color":"aqua"},{"text":"g soon","color":"white"}]
execute if score .start ic_timers matches 64 run bossbar set item_call:status name [{"text":"Starting","color":"aqua"},{"text":" soon","color":"white"}]
execute if score .start ic_timers matches 71 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 71 run bossbar set item_call:status value 7
execute if score .start ic_timers matches 72 run bossbar set item_call:status name [{"text":"Starting s","color":"aqua"},{"text":"oon","color":"white"}]
execute if score .start ic_timers matches 80 run bossbar set item_call:status name [{"text":"Starting so","color":"aqua"},{"text":"on","color":"white"}]
execute if score .start ic_timers matches 88 run bossbar set item_call:status name [{"text":"Starting soo","color":"aqua"},{"text":"n","color":"white"}]
execute if score .start ic_timers matches 91 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 91 run bossbar set item_call:status value 6
execute if score .start ic_timers matches 96 run bossbar set item_call:status name {"text":"Starting soon","color":"aqua"}
execute if score .start ic_timers matches 103 run bossbar set item_call:status name [{"text":"S","color":"green"},{"text":"tarting soon","color":"aqua"}]
execute if score .start ic_timers matches 111 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 111 run title @a subtitle {"text":"5","color":"white"}
execute if score .start ic_timers matches 111 run title @a times 10 30 0
execute if score .start ic_timers matches 111 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 111 run bossbar set item_call:status value 5
execute if score .start ic_timers matches 111 run bossbar set item_call:status name [{"text":"St","color":"green"},{"text":"arting soon","color":"aqua"}]
execute if score .start ic_timers matches 119 run bossbar set item_call:status name [{"text":"Sta","color":"green"},{"text":"rting soon","color":"aqua"}]
execute if score .start ic_timers matches 127 run bossbar set item_call:status name [{"text":"Star","color":"green"},{"text":"ting soon","color":"aqua"}]
execute if score .start ic_timers matches 131 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 131 run title @a subtitle {"text":"4","color":"white"}
execute if score .start ic_timers matches 131 run title @a times 0 30 0
execute if score .start ic_timers matches 131 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 131 run bossbar set item_call:status value 4
execute if score .start ic_timers matches 135 run bossbar set item_call:status name [{"text":"Start","color":"green"},{"text":"ing soon","color":"aqua"}]
execute if score .start ic_timers matches 143 run bossbar set item_call:status name [{"text":"Starti","color":"green"},{"text":"ng soon","color":"aqua"}]
execute if score .start ic_timers matches 151 run bossbar set item_call:status name [{"text":"Startin","color":"green"},{"text":"g soon","color":"aqua"}]
execute if score .start ic_timers matches 151 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 151 run title @a subtitle {"text":"3","color":"white"}
execute if score .start ic_timers matches 151 run title @a times 0 30 0
execute if score .start ic_timers matches 151 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 151 run bossbar set item_call:status value 3
execute if score .start ic_timers matches 159 run bossbar set item_call:status name [{"text":"Starting","color":"green"},{"text":" soon","color":"aqua"}]
execute if score .start ic_timers matches 167 run bossbar set item_call:status name [{"text":"Starting s","color":"green"},{"text":"oon","color":"aqua"}]
execute if score .start ic_timers matches 171 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 171 run title @a subtitle {"text":"2","color":"white"}
execute if score .start ic_timers matches 171 run title @a times 0 30 0
execute if score .start ic_timers matches 171 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 171 run bossbar set item_call:status value 2
execute if score .start ic_timers matches 175 run bossbar set item_call:status name [{"text":"Starting so","color":"green"},{"text":"on","color":"aqua"}]
execute if score .start ic_timers matches 183 run bossbar set item_call:status name [{"text":"Starting soo","color":"green"},{"text":"n","color":"aqua"}]
execute if score .start ic_timers matches 191 run bossbar set item_call:status name {"text":"Starting soon","color":"green"}
execute if score .start ic_timers matches 191 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 191 run title @a subtitle {"text":"1","color":"white"}
execute if score .start ic_timers matches 191 run title @a times 0 30 30
execute if score .start ic_timers matches 191 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 191 run bossbar set item_call:status value 1
execute if score .start ic_timers matches 196 run bossbar set item_call:status name {"text":"Starting soon","color":"white"}
execute if score .start ic_timers matches 201 run bossbar set item_call:status name {"text":"Starting soon","color":"green"}
execute if score .start ic_timers matches 206 run bossbar set item_call:status name {"text":"Starting soon","color":"white"}
execute if score .start ic_timers matches 211 run bossbar set item_call:status name {"text":"Starting soon","color":"green"}
execute if score .start ic_timers matches 211 run bossbar set item_call:status value 0
# cancel if no players
execute if score .start ic_timers matches 212 store result score .players ic_gamedata run execute if entity @a[team=ic_player]
execute if score .start ic_timers matches 212 if score .players ic_gamedata matches 0 run function item_call:game/scripts/no_players
# player spawning
# rand location
execute if score .start ic_timers matches 213 if score .rand_spawn ic_gamedata matches 1 run tellraw @a {"text":"Randomizing spawn region... please wait","color":"red"}
execute if score .start ic_timers matches 213 if score .rand_spawn ic_gamedata matches 1 run tag @a[limit=1,sort=random] add wgen_marker
execute if score .start ic_timers matches 213 if score .rand_spawn ic_gamedata matches 1 run spreadplayers 0 0 0 5000 true @a[tag=wgen_marker]
execute if score .start ic_timers matches 214 if score .rand_spawn ic_gamedata matches 1 as @a[tag=wgen_marker] at @s run tp @a @s
# spread players
execute if score .start ic_timers matches 215 if score .rand_spawn ic_gamedata matches 1 if score .players ic_gamedata matches 2.. if score .spread_plyr ic_gamedata matches 1 at @a[tag=wgen_marker] run spreadplayers ~ ~ 100 500 false @a[team=ic_player]
execute if score .start ic_timers matches 215 if score .rand_spawn ic_gamedata matches 0 if score .players ic_gamedata matches 2.. if score .spread_plyr ic_gamedata matches 1 at @a[limit=1,sort=random] run spreadplayers ~ ~ 100 500 false @a[team=ic_player] 
# remove rand location tag (if needed)
execute if score .start ic_timers matches 216 if score .rand_spawn ic_gamedata matches 1 run tag @a[tag=wgen_marker] remove wgen_marker
# apply start effects
execute if score .start ic_timers matches 216 run effect give @a[team=ic_player] minecraft:saturation 200 4 true
execute if score .start ic_timers matches 216 run effect give @a[team=ic_player] minecraft:resistance 10 4 true
execute if score .start ic_timers matches 216 run effect give @a[team=ic_player] minecraft:regeneration 10 4 true
#
execute if score .start ic_timers matches 216 if score .show_points ic_gamedata matches 1 run scoreboard objectives setdisplay sidebar ic_points
execute if score .start ic_timers matches 216 if score .show_points ic_gamedata matches 0 run scoreboard objectives setdisplay sidebar 
# end script
execute if score .start ic_timers matches 220 run schedule clear item_call:menu/start_game 
execute if score .start ic_timers matches 220 run scoreboard players set .start ic_timers 0