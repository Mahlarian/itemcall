playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 1000 0.8
scoreboard players set .win_method ic_gamedata 1
title @s actionbar [{"text":"Win Condition","color":"aqua"},{"text":" set to ","color":"gray"},{"text":"points","color":"light_purple","bold":true}]
function item_call:menu/menu_display