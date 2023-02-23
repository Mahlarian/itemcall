# dependency check
scoreboard players set .dep_check ic_gamedata 0
scoreboard players set in math 10
scoreboard players set in1 math 12
function math:rng/range
execute if score in math matches 10 if score in1 math matches 12 if score out math matches 10..12 run scoreboard players set .dep_check ic_gamedata 1
scoreboard players set in math 0
scoreboard players set in1 math 0
#
execute unless score .dep_check ic_gamedata matches 1 run tellraw @a[tag=ic_op] [{"text":"--- DATAPACK INSTALLED INCORRECTLY ---\n","color":"red","bold":true},{"text":"Dependencies were not found! The game will not work without them. Please check your install.\n","color":"gray"},{"text":"Refer "},{"text":"here","color":"blue","underlined":true},{"text":" for install instructions"}]
tellraw @a[tag=ic_op] {"text":"Itemcall v1.0 loaded","color":"green"}
execute if score .active ic_gamedata matches 0 run tellraw @a[tag=ic_op] [{"text":"[Itemcall] ","color":"aqua"},{"text":"No game in progress -- Run the ","color":"red"},{"text":"[menu]","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_menu set 1"}},{"text":" to configure and start","color":"red"}]