schedule clear item_call:menu/start_game 
scoreboard players set .start ic_timers 0
bossbar set item_call:status visible false
title @a title {"text":"Unable to start","color":"red"}
title @a subtitle {"text":"Installation error","color":"white"} 
title @a times 0 100 20
execute unless score .dep_check ic_gamedata matches 1 run tellraw @a[tag=ic_op] [{"text":"--- DATAPACK INSTALLED INCORRECTLY ---\n","color":"red","bold":true},{"text":"Dependencies were not found! The game will not work without them. Please check your install.\n","color":"gray"},{"text":"Refer "},{"text":"here","color":"blue","underlined":true},{"text":" for install instructions"}]
playsound block.beacon.deactivate master @a ~ ~ ~ 1000 1