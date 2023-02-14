playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 1000 0.8
scoreboard players set .rand_spawn ic_gamedata 0
title @s actionbar [{"text":"Random spawn","color":"aqua"},{"text":" set to ","color":"gray"},{"text":"off","color":"red","bold":true}]
function item_call:menu/menu_display