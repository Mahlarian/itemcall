schedule clear item_call:menu/start_game 
scoreboard players set .start ic_timers 0
title @a title {"text":"Game cancelled","color":"red"}
title @a subtitle {"text":"The game was stopped by an operator","color":"white"} 
title @a times 0 100 20
playsound entity.wither.death master @a ~ ~ ~ 1000 1