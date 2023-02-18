title @a title {"text":"Vote failed","color":"red"}
title @a subtitle {"text":"Not enough players voted","color":"white"} 
title @a times 0 100 20
bossbar set item_call:status color red
bossbar set item_call:status name {"text": "Vote failed - Resuming","color": "red"}
bossbar set item_call:status max 1
bossbar set item_call:status value 1
execute as @a[tag=vote_caller] run trigger ic_vote set 400
scoreboard players enable @a[tag=!vote_caller,tag=ic_player] ic_vote
playsound entity.blaze.death master @a ~ ~ ~ 1000 0.75
function item_call:game/scripts/item_check
schedule function item_call:game/scripts/bossbar_name 3s