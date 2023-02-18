title @a title {"text":"Vote passed!","color":"green"}
title @a subtitle {"text":"Starting next round","color":"white"} 
title @a times 0 100 20
bossbar set item_call:status color green
bossbar set item_call:status name {"text": "Skipping round...","color": "green"}
bossbar set item_call:status max 1
bossbar set item_call:status value 1
playsound block.note_block.pling master @a ~ ~ ~ 1000 2
scoreboard players set .vote ic_timers 205
schedule function item_call:game/scripts/start_round 5s