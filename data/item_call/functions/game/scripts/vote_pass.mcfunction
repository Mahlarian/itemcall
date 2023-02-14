title @a title {"text":"Vote passed!","color":"green"}
title @a subtitle {"text":"Starting next round","color":"white"} 
title @a times 0 100 20
playsound block.note_block.pling master @a ~ ~ ~ 1000 2
scoreboard players set .vote ic_timers 205
schedule function item_call:game/scripts/start_round 5s