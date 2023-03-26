scoreboard players set in math 86
scoreboard players set in1 math 89
function math:rng/range
execute if score .item ic_gamedata = out math run function item_call:game/scripts/item_randomizer/pool_6
scoreboard players operation .item ic_gamedata = out math

playsound entity.wither.spawn master @a ~ ~ ~ 1000 1
execute if score .item ic_gamedata matches 86 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"aaa","color":"white","obfuscated":true},{"text":"Dragon Egg","color":"#C919FF","obfuscated":false},{"text":"aaa","color":"white","obfuscated":true}]
execute if score .item ic_gamedata matches 87 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"aaa","color":"white","obfuscated":true},{"text":"Elytra","color":"#C919FF","obfuscated":false},{"text":"aaa","color":"white","obfuscated":true}]
execute if score .item ic_gamedata matches 88 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"aaa","color":"white","obfuscated":true},{"text":"Beacon","color":"#C919FF","obfuscated":false},{"text":"aaa","color":"white","obfuscated":true}]
execute if score .item ic_gamedata matches 89 run title @a subtitle [{"text":"Acquire ","color":"white"},{"text":"aaa","color":"white","obfuscated":true},{"text":"Netherite Block","color":"#C919FF","obfuscated":false},{"text":"aaa","color":"white","obfuscated":true}]