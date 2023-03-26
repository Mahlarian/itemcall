scoreboard players set in math 1
scoreboard players set in1 math 12
function math:rng/range
execute if score .item ic_gamedata = out math run function item_call:game/scripts/item_randomizer/pool_1
scoreboard players operation .item ic_gamedata = out math

execute if score .item ic_gamedata matches 1 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Glass","color":"gray"}]
execute if score .item ic_gamedata matches 2 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Seagrass","color":"gray"}]
execute if score .item ic_gamedata matches 3 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Sugarcane","color":"gray"}]
execute if score .item ic_gamedata matches 4 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Kelp","color":"gray"}]
execute if score .item ic_gamedata matches 5 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Carrot","color":"gray"}]
execute if score .item ic_gamedata matches 6 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Apple","color":"gray"}]
execute if score .item ic_gamedata matches 7 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Glass","color":"gray"}]
execute if score .item ic_gamedata matches 8 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Snowball","color":"gray"}]
execute if score .item ic_gamedata matches 9 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Charcoal","color":"gray"}]
execute if score .item ic_gamedata matches 10 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Leather","color":"gray"}]
execute if score .item ic_gamedata matches 11 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Gunpowder","color":"gray"}]
execute if score .item ic_gamedata matches 12 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Gravel","color":"gray"}]