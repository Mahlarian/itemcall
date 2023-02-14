execute if score .win_amount ic_gamedata matches 11.. run playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 1000 0.7
execute if score .win_amount ic_gamedata matches 11.. run scoreboard players remove .win_amount ic_gamedata 10
execute if score .win_amount ic_gamedata matches 11.. run title @s actionbar [{"text":"Removed 10","color":"red"},{"text":" from ","color":"gray"},{"text":"win amount","color":"light_purple","bold":true}]

execute if score .win_amount ic_gamedata matches ..10 run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1000 0.5
execute if score .win_amount ic_gamedata matches ..10 run title @s actionbar [{"text":"Win amount may not be lower than ","color":"red"},{"text":"1","color":"gold","bold":true}]
function item_call:menu/menu_display