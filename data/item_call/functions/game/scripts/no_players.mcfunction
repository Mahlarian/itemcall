schedule clear item_call:menu/start_game 
scoreboard players set .start ic_timers 0
bossbar set item_call:status visible false
title @a title {"text":"Game cancelled","color":"red"}
title @a subtitle {"text":"No players on player team","color":"white"} 
title @a times 0 100 20
playsound block.beacon.deactivate master @a ~ ~ ~ 1000 1