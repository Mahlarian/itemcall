schedule function item_call:menu/start_game 1t
scoreboard players add .start ic_timers 1
# 
execute if score .start ic_timers matches 1 run tellraw @a [{"selector":"@s","color":"blue","bold":true},{"text":" has started the game!","color":"gray","bold":false}]
execute if score .start ic_timers matches 1..651 unless entity @a[tag=!ic_player,tag=!ic_spectator] run scoreboard players set .start ic_timers 652
execute if score .start ic_timers matches 1 run bossbar set item_call:status visible true
execute if score .start ic_timers matches 1 run bossbar set item_call:status players @a
execute if score .start ic_timers matches 2 run bossbar set item_call:status max 30
execute if score .start ic_timers matches 2 run bossbar set item_call:status value 30
execute if score .start ic_timers matches 2 run bossbar set item_call:status color red
execute if score .start ic_timers matches 2 run scoreboard players set .start_cd ic_timers 30
execute if score .start ic_timers matches 2 run scoreboard players set .unready ic_gamedata 0
#
execute if score .start ic_timers matches 2..651 run scoreboard players add .start_1s ic_timers 1
execute if score .start ic_timers matches 2..651 if score .start_1s ic_timers matches 21.. run scoreboard players remove .start_cd ic_timers 1
execute if score .start ic_timers matches 2..651 if score .start_1s ic_timers matches 21.. run scoreboard players set .start_1s ic_timers 0

#
execute if score .start_1s ic_timers matches 20 run bossbar set item_call:status name [{"text":"Starting in ","color":"light_purple"},{"score":{"name":".start_cd","objective":"ic_timers"},"color":"white"},{"text":" seconds","color":"light_purple"}]
execute if score .start_1s ic_timers matches 20 store result bossbar item_call:status value run scoreboard players get .start_cd ic_timers 
execute if score .start_1s ic_timers matches 20 store result score .unready ic_gamedata run execute if entity @a[tag=!ic_player,tag=!ic_spectator]
execute if score .start_1s ic_timers matches 20 run title @a title [{"text":"Waiting for ","color":"light_purple"},{"score":{"name":".unready","objective":"ic_gamedata"},"color":"white"},{"text":" players","color":"light_purple"}]
execute if score .start_cd ic_timers matches ..29 if score .start_1s ic_timers matches 20 run title @a times 0 40 0
execute if score .start_cd ic_timers matches 25 if score .start_1s ic_timers matches 16 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 25 if score .start_1s ic_timers matches 18 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 25 if score .start_1s ic_timers matches 20 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 20 if score .start_1s ic_timers matches 16 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 20 if score .start_1s ic_timers matches 18 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 20 if score .start_1s ic_timers matches 20 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 15 if score .start_1s ic_timers matches 16 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 15 if score .start_1s ic_timers matches 18 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 15 if score .start_1s ic_timers matches 20 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 10 if score .start_1s ic_timers matches 16 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 10 if score .start_1s ic_timers matches 18 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 10 if score .start_1s ic_timers matches 20 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 5 if score .start_1s ic_timers matches 16 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 5 if score .start_1s ic_timers matches 18 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 5 if score .start_1s ic_timers matches 20 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start_cd ic_timers matches 25 if score .start_1s ic_timers matches 16 run tellraw @a[tag=!ic_player,tag=!ic_spectator] [{"text":"You are not on a team - ","color":"red"},{"text":"[Select Team]","color":"white","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to select your team"}]},"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam"}}]
execute if score .start_cd ic_timers matches 20 if score .start_1s ic_timers matches 16 run tellraw @a[tag=!ic_player,tag=!ic_spectator] [{"text":"You are not on a team - ","color":"red"},{"text":"[Select Team]","color":"white","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to select your team"}]},"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam"}}]
execute if score .start_cd ic_timers matches 15 if score .start_1s ic_timers matches 16 run tellraw @a[tag=!ic_player,tag=!ic_spectator] [{"text":"You are not on a team - ","color":"red"},{"text":"[Select Team]","color":"white","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to select your team"}]},"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam"}}]
execute if score .start_cd ic_timers matches 10 if score .start_1s ic_timers matches 16 run tellraw @a[tag=!ic_player,tag=!ic_spectator] [{"text":"You are not on a team - ","color":"red"},{"text":"[Select Team]","color":"white","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to select your team"}]},"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam"}}]
execute if score .start_cd ic_timers matches 5 if score .start_1s ic_timers matches 16 run tellraw @a[tag=!ic_player,tag=!ic_spectator] [{"text":"You are not on a team - ","color":"red"},{"text":"[Select Team]","color":"white","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to select your team"}]},"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam"}}]
#
execute if score .start ic_timers matches 652 run scoreboard players reset .start_cd ic_timers
execute if score .start ic_timers matches 652 run scoreboard players reset .start_1s ic_timers
execute if score .start ic_timers matches 652 as @a[tag=!ic_player,tag=!ic_spectator] run tag @s add ic_spectator

execute if score .start ic_timers matches 653 as @a run function item_call:menu/clear

execute if score .start ic_timers matches 653 run bossbar set item_call:status color white
execute if score .start ic_timers matches 653 run bossbar set item_call:status max 10
execute if score .start ic_timers matches 653 run bossbar set item_call:status value 10
execute if score .start ic_timers matches 653 run bossbar set item_call:status name {"text":"Starting soon","color":"white"}
execute if score .start ic_timers matches 653 run tellraw @a[tag=ic_op] [{"text":"[Click]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_menu set 992"}},{"text":" to stop the game from starting","bold":false}]
execute if score .start ic_timers matches 653 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000 1.5
execute if score .start ic_timers matches 656 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000 1.6
execute if score .start ic_timers matches 660 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1000 1.7
execute if score .start ic_timers matches 660 run bossbar set item_call:status name [{"text":"S","color":"aqua"},{"text":"tarting soon","color":"white"}]
execute if score .start ic_timers matches 663 run tellraw @a[tag=!ic_player,tag=!ic_spectator] [{"text":"\n\nYou haven't chose a team yet!\n","color":"red","bold":true},{"text":"[Choose]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger ic_jointeam"}},{"text":" a team before the game starts","color":"gray","bold":false}]
execute if score .start ic_timers matches 663 run playsound block.note_block.pling master @a[tag=!ic_player,tag=!ic_spectator] ~ ~ ~ 1000 1
execute if score .start ic_timers matches 663 run tellraw @a[tag=ic_spectator] [{"text":"Last chance to join player team!\n","color":"red","bold":true},{"text":"[Click to join]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam set 11"}}]
execute if score .start ic_timers matches 663 run tellraw @a[tag=ic_player] [{"text":"Last chance to spectate!\n","color":"red","bold":true},{"text":"[Click to join]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam set 12"}}]
execute if score .start ic_timers matches 663 run title @a title {"text":"Itemcall","color":"aqua"}
execute if score .start ic_timers matches 663 run title @a subtitle [{"text":"A datapack creation by ","color":"light_purple"},{"text": "Mahlarian","color": "white"}]
execute if score .start ic_timers matches 663 run title @a times 20 60 20
execute if score .start ic_timers matches 663 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 668 run bossbar set item_call:status name [{"text":"St","color":"aqua"},{"text":"arting soon","color":"white"}]
execute if score .start ic_timers matches 676 run bossbar set item_call:status name [{"text":"Sta","color":"aqua"},{"text":"rting soon","color":"white"}]
execute if score .start ic_timers matches 683 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 683 run bossbar set item_call:status value 9
execute if score .start ic_timers matches 684 run bossbar set item_call:status name [{"text":"Star","color":"aqua"},{"text":"ting soon","color":"white"}]
execute if score .start ic_timers matches 692 run bossbar set item_call:status name [{"text":"Start","color":"aqua"},{"text":"ing soon","color":"white"}]
execute if score .start ic_timers matches 700 run bossbar set item_call:status name [{"text":"Starti","color":"aqua"},{"text":"ng soon","color":"white"}]
execute if score .start ic_timers matches 703 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 703 run bossbar set item_call:status value 8
execute if score .start ic_timers matches 708 run bossbar set item_call:status name [{"text":"Startin","color":"aqua"},{"text":"g soon","color":"white"}]
execute if score .start ic_timers matches 716 run bossbar set item_call:status name [{"text":"Starting","color":"aqua"},{"text":" soon","color":"white"}]
execute if score .start ic_timers matches 723 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 723 run bossbar set item_call:status value 7
execute if score .start ic_timers matches 724 run bossbar set item_call:status name [{"text":"Starting s","color":"aqua"},{"text":"oon","color":"white"}]
execute if score .start ic_timers matches 732 run bossbar set item_call:status name [{"text":"Starting so","color":"aqua"},{"text":"on","color":"white"}]
execute if score .start ic_timers matches 740 run bossbar set item_call:status name [{"text":"Starting soo","color":"aqua"},{"text":"n","color":"white"}]
execute if score .start ic_timers matches 743 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 743 run bossbar set item_call:status value 6
execute if score .start ic_timers matches 748 run bossbar set item_call:status name {"text":"Starting soon","color":"aqua"}
execute if score .start ic_timers matches 755 run bossbar set item_call:status name [{"text":"S","color":"green"},{"text":"tarting soon","color":"aqua"}]
execute if score .start ic_timers matches 763 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 763 run title @a subtitle {"text":"5","color":"white"}
execute if score .start ic_timers matches 763 run title @a times 10 30 0
execute if score .start ic_timers matches 763 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 763 run bossbar set item_call:status value 5
execute if score .start ic_timers matches 763 run bossbar set item_call:status name [{"text":"St","color":"green"},{"text":"arting soon","color":"aqua"}]
execute if score .start ic_timers matches 771 run bossbar set item_call:status name [{"text":"Sta","color":"green"},{"text":"rting soon","color":"aqua"}]
execute if score .start ic_timers matches 779 run bossbar set item_call:status name [{"text":"Star","color":"green"},{"text":"ting soon","color":"aqua"}]
execute if score .start ic_timers matches 783 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 783 run title @a subtitle {"text":"4","color":"white"}
execute if score .start ic_timers matches 783 run title @a times 0 30 0
execute if score .start ic_timers matches 783 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 783 run bossbar set item_call:status value 4
execute if score .start ic_timers matches 787 run bossbar set item_call:status name [{"text":"Start","color":"green"},{"text":"ing soon","color":"aqua"}]
execute if score .start ic_timers matches 795 run bossbar set item_call:status name [{"text":"Starti","color":"green"},{"text":"ng soon","color":"aqua"}]
execute if score .start ic_timers matches 803 run bossbar set item_call:status name [{"text":"Startin","color":"green"},{"text":"g soon","color":"aqua"}]
execute if score .start ic_timers matches 803 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 803 run title @a subtitle {"text":"3","color":"white"}
execute if score .start ic_timers matches 803 run title @a times 0 30 0
execute if score .start ic_timers matches 803 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 803 run bossbar set item_call:status value 3
execute if score .start ic_timers matches 811 run bossbar set item_call:status name [{"text":"Starting","color":"green"},{"text":" soon","color":"aqua"}]
execute if score .start ic_timers matches 819 run bossbar set item_call:status name [{"text":"Starting s","color":"green"},{"text":"oon","color":"aqua"}]
execute if score .start ic_timers matches 823 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 823 run title @a subtitle {"text":"2","color":"white"}
execute if score .start ic_timers matches 823 run title @a times 0 30 0
execute if score .start ic_timers matches 823 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 823 run bossbar set item_call:status value 2
execute if score .start ic_timers matches 827 run bossbar set item_call:status name [{"text":"Starting so","color":"green"},{"text":"on","color":"aqua"}]
execute if score .start ic_timers matches 835 run bossbar set item_call:status name [{"text":"Starting soo","color":"green"},{"text":"n","color":"aqua"}]
execute if score .start ic_timers matches 843 run bossbar set item_call:status name {"text":"Starting soon","color":"green"}
execute if score .start ic_timers matches 843 run title @a title {"text":"Starting in","color":"green"}
execute if score .start ic_timers matches 843 run title @a subtitle {"text":"1","color":"white"}
execute if score .start ic_timers matches 843 run title @a times 0 30 30
execute if score .start ic_timers matches 843 run playsound ui.button.click master @a ~ ~ ~ 1000 2
execute if score .start ic_timers matches 843 run bossbar set item_call:status value 1
execute if score .start ic_timers matches 848 run bossbar set item_call:status name {"text":"Starting soon","color":"white"}
execute if score .start ic_timers matches 853 run bossbar set item_call:status name {"text":"Starting soon","color":"green"}
execute if score .start ic_timers matches 858 run bossbar set item_call:status name {"text":"Starting soon","color":"white"}
execute if score .start ic_timers matches 863 run bossbar set item_call:status name {"text":"Starting soon","color":"green"}
execute if score .start ic_timers matches 863 run bossbar set item_call:status value 0
# cancel if no players
execute if score .start ic_timers matches 864 store result score .players ic_gamedata run execute if entity @a[tag=ic_player]
execute if score .start ic_timers matches 864 if score .players ic_gamedata matches 0 run function item_call:game/scripts/no_players
#
execute if score .start ic_timers matches 864 unless score .dep_check ic_gamedata matches 1 run function item_call:game/scripts/dep_check_fail
# variable adjustments
execute if score .start ic_timers matches 865 run scoreboard players set .active ic_gamedata 1
execute if score .start ic_timers matches 865 run scoreboard players set .round ic_gamedata 1
# remove trigger perms
execute if score .start ic_timers matches 865 as @a[tag=ic_op] run trigger ic_menu set 999
execute if score .start ic_timers matches 865 as @a run trigger ic_jointeam set 999
execute if score .start ic_timers matches 865 run scoreboard players reset @a[tag=ic_op] ic_menu
execute if score .start ic_timers matches 865 run scoreboard players reset @a ic_jointeam

# player spawning
# rand location
execute if score .start ic_timers matches 865 if score .rand_spawn ic_gamedata matches 1 run tellraw @a {"text":"Randomizing spawn region... please wait","color":"red"}
execute if score .start ic_timers matches 865 if score .rand_spawn ic_gamedata matches 1 run tag @a[limit=1,sort=random] add wgen_marker
execute if score .start ic_timers matches 865 if score .rand_spawn ic_gamedata matches 1 run spreadplayers 0 0 0 5000 true @a[tag=wgen_marker]
execute if score .start ic_timers matches 866 if score .rand_spawn ic_gamedata matches 1 as @a[tag=wgen_marker] at @s run tp @a @s
# spread players
execute if score .start ic_timers matches 867 if score .rand_spawn ic_gamedata matches 1 if score .players ic_gamedata matches 2.. if score .spread_plyr ic_gamedata matches 1 at @a[tag=wgen_marker] run spreadplayers ~ ~ 100 500 false @a[tag=ic_player]
execute if score .start ic_timers matches 867 if score .rand_spawn ic_gamedata matches 0 if score .players ic_gamedata matches 2.. if score .spread_plyr ic_gamedata matches 1 at @a[limit=1,sort=random] run spreadplayers ~ ~ 100 500 false @a[tag=ic_player] 
# remove rand location tag (if needed)
execute if score .start ic_timers matches 868 if score .rand_spawn ic_gamedata matches 1 run tag @a[tag=wgen_marker] remove wgen_marker
# apply start effects
execute if score .start ic_timers matches 868 as @a at @s run spawnpoint @s ~ ~ ~
execute if score .start ic_timers matches 868 run effect give @a[tag=ic_player] minecraft:saturation 200 4 true
execute if score .start ic_timers matches 868 run effect give @a[tag=ic_player] minecraft:resistance 10 4 true
execute if score .start ic_timers matches 868 run effect give @a[tag=ic_player] minecraft:regeneration 10 4 true
#
execute if score .start ic_timers matches 868 if score .show_points ic_gamedata matches 1 run scoreboard objectives setdisplay sidebar ic_points
execute if score .start ic_timers matches 868 if score .show_points ic_gamedata matches 0 run scoreboard objectives setdisplay sidebar 
#
execute if score .start ic_timers matches 868 run function item_call:game/scripts/tutorial
# end script
execute if score .start ic_timers matches 872 run schedule clear item_call:menu/start_game 
execute if score .start ic_timers matches 872 run scoreboard players set .start ic_timers 0