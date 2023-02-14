schedule function item_call:game/scripts/start_round 1t
scoreboard players add .choose ic_timers 1
#
execute if score .choose ic_timers matches 1 run title @a title {"text":"Starting next round...","color":"aqua"}
execute if score .choose ic_timers matches 1 run title @a subtitle {"text":"Choosing item","color":"white"}
execute if score .choose ic_timers matches 1 run title @a times 20 155 0
execute if score .choose ic_timers matches 31 run title @a subtitle {"text":"item=name","color":"white","obfuscated":true}
execute if score .choose ic_timers matches 31..71 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 73 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 75 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 77 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 79 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 81 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 83 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 85 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 87 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 89 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 91 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 93 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 95 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 97 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 99 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 101 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 103 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 105 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 107 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 109 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 111 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 114 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 117 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 121 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 125 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 129 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 134 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 139 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 146 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 154 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 170 run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 176 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1000 2
execute if score .choose ic_timers matches 176 run title @a title [{"text":"Round ","color":"green"},{"score":{"name":".round","objective":"ic_gamedata"},"color":"light_purple"}]
execute if score .choose ic_timers matches 176 run function item_call:game/scripts/pick_item
execute if score .choose ic_timers matches 176 run title @a times 0 60 40
execute if score .vote_skip ic_gamedata matches 1 if score .choose ic_timers matches 176 run scoreboard players reset @a ic_vote
execute if score .vote_skip ic_gamedata matches 1 if score .choose ic_timers matches 176 run scoreboard players enable @a[tag=ic_player] ic_vote

#
execute if score .choose ic_timers matches 176 run schedule function item_call:game/scripts/item_check 10t
execute if score .choose ic_timers matches 176 run schedule clear item_call:game/scripts/start_round
execute if score .choose ic_timers matches 176 run scoreboard players set .choose ic_timers 0