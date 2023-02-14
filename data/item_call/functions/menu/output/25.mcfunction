execute if score .win_amount ic_gamedata matches ..994 run playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 1000 1.2
execute if score .win_amount ic_gamedata matches ..994 run scoreboard players add .win_amount ic_gamedata 5
execute if score .win_amount ic_gamedata matches ..994 run title @s actionbar [{"text":"Added 5","color":"green"},{"text":" to ","color":"gray"},{"text":"win amount","color":"light_purple","bold":true}]

execute if score .win_amount ic_gamedata matches 995.. run playsound minecraft:block.note_block.basedrum master @a ~ ~ ~ 1000 0.5
execute if score .win_amount ic_gamedata matches 995.. run title @s actionbar [{"text":"Win amount may not exceed ","color":"red"},{"text":"999","color":"gold","bold":true}]
function item_call:menu/menu_display