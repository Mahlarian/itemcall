playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 1000 1.2
scoreboard players set .no_hoard ic_gamedata 1
title @s actionbar [{"text":"Antihoard Mode","color":"aqua"},{"text":" set to ","color":"gray"},{"text":"on","color":"green","bold":true}]
function item_call:menu/menu_display