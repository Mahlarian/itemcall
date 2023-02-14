title @a title {"text":"Round skipped","color":"yellow"}
title @a subtitle {"text":"An operator has skipped this round","color":"white"} 
title @a times 0 100 20
playsound block.note_block.pling master @a ~ ~ ~ 1000 1
scoreboard players reset @a[tag=ic_op] ic_vote
schedule function item_call:game/scripts/start_round 5s