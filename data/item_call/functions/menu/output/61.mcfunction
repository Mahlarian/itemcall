playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 1000 0.8
scoreboard players set .vote_skip ic_gamedata 1
title @s actionbar [{"text":"Skip round voting","color":"aqua"},{"text":" set to ","color":"gray"},{"text":"players","color":"light_purple","bold":true}]
function item_call:menu/menu_display