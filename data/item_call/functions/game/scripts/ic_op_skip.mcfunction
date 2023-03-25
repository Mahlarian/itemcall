title @a title {"text":"Round skipped","color":"yellow"}
title @a subtitle {"text":"An operator has skipped this round","color":"white"} 
title @a times 0 100 20
schedule clear item_call:game/scripts/sp_bossbar_name
bossbar set item_call:status color yellow
bossbar set item_call:status name {"text": "Round skipped by operator","color": "yellow"}
bossbar set item_call:status max 1
bossbar set item_call:status value 1
playsound block.note_block.pling master @a ~ ~ ~ 1000 1
scoreboard players reset @a[tag=ic_op] ic_vote
schedule function item_call:game/scripts/start_round 5s