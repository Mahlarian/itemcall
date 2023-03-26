scoreboard players set in math 75
scoreboard players set in1 math 85
function math:rng/range
execute if score .item ic_gamedata = out math run function item_call:game/scripts/item_randomizer/pool_5
scoreboard players operation .item ic_gamedata = out math

execute if score .item ic_gamedata matches 75 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Music Disc - Pigstep","color":"gold"}]
execute if score .item ic_gamedata matches 76 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Chorus Fruit","color":"gold"}]
execute if score .item ic_gamedata matches 77 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"End Crystal","color":"gold"}]
execute if score .item ic_gamedata matches 78 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Bottle O' Enchanting","color":"gold"}]
execute if score .item ic_gamedata matches 79 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Wither Skeleton Skull","color":"gold"}]
execute if score .item ic_gamedata matches 80 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Netherite Scrap","color":"gold"}]
execute if score .item ic_gamedata matches 81 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Mycelium","color":"gold"}]
execute if score .item ic_gamedata matches 82 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Enchanted Golden Apple","color":"gold"}]
execute if score .item ic_gamedata matches 83 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Lodestone","color":"gold"}]
execute if score .item ic_gamedata matches 84 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Dragon Breath","color":"gold"}]
execute if score .item ic_gamedata matches 85 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"Trident","color":"gold"}]
