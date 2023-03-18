scoreboard players set in math 1
scoreboard players set in1 math 100
scoreboard players set out math 0
function math:rng/range
scoreboard players operation .pool_perc ic_gamedata = out math
# round 1 - 2
execute if score round ic_gamedata matches 1..2 if score .pool_perc ic_gamedata matches 1..100 run function item_call:game/scripts/item_randomizer/pool_1
# round 3 - 4
execute if score round ic_gamedata matches 3..4 if score .pool_perc ic_gamedata matches 1..50 run function item_call:game/scripts/item_randomizer/pool_1
execute if score round ic_gamedata matches 3..4 if score .pool_perc ic_gamedata matches 51..100 run function item_call:game/scripts/item_randomizer/pool_2
# round 5 - 7
execute if score round ic_gamedata matches 5..7 if score .pool_perc ic_gamedata matches 1..20 run function item_call:game/scripts/item_randomizer/pool_1
execute if score round ic_gamedata matches 5..7 if score .pool_perc ic_gamedata matches 21..55 run function item_call:game/scripts/item_randomizer/pool_2
execute if score round ic_gamedata matches 5..7 if score .pool_perc ic_gamedata matches 56..100 run function item_call:game/scripts/item_randomizer/pool_3
# round 8 - 9
execute if score round ic_gamedata matches 8..9 if score .pool_perc ic_gamedata matches 1..10 run function item_call:game/scripts/item_randomizer/pool_1
execute if score round ic_gamedata matches 8..9 if score .pool_perc ic_gamedata matches 11..25 run function item_call:game/scripts/item_randomizer/pool_2
execute if score round ic_gamedata matches 8..9 if score .pool_perc ic_gamedata matches 26..65 run function item_call:game/scripts/item_randomizer/pool_3
execute if score round ic_gamedata matches 8..9 if score .pool_perc ic_gamedata matches 66..100 run function item_call:game/scripts/item_randomizer/pool_4
# round 10
execute if score round ic_gamedata matches 10 if score .pool_perc ic_gamedata matches 1..5 run tellraw @a {"text": "pool 1"}
execute if score round ic_gamedata matches 10 if score .pool_perc ic_gamedata matches 6..10 run tellraw @a {"text": "pool 2"}
execute if score round ic_gamedata matches 10 if score .pool_perc ic_gamedata matches 11..20 run tellraw @a {"text": "pool 3"}
execute if score round ic_gamedata matches 10 if score .pool_perc ic_gamedata matches 21..70 run tellraw @a {"text": "pool 4"}
execute if score round ic_gamedata matches 10 if score .pool_perc ic_gamedata matches 71..100 run tellraw @a {"text": "pool 5"}
execute if score round ic_gamedata matches 10..10 if score .pool_perc ic_gamedata matches 1..5 run function item_call:game/scripts/item_randomizer/pool_1
execute if score round ic_gamedata matches 10..10 if score .pool_perc ic_gamedata matches 6..10 run function item_call:game/scripts/item_randomizer/pool_2
execute if score round ic_gamedata matches 10..10 if score .pool_perc ic_gamedata matches 11..20 run function item_call:game/scripts/item_randomizer/pool_3
execute if score round ic_gamedata matches 10..10 if score .pool_perc ic_gamedata matches 21..70 run function item_call:game/scripts/item_randomizer/pool_4
execute if score round ic_gamedata matches 10..10 if score .pool_perc ic_gamedata matches 71..100 run function item_call:game/scripts/item_randomizer/pool_5
# round 11 - 14
execute if score round ic_gamedata matches 11..14 if score .pool_perc ic_gamedata matches 1..5 run function item_call:game/scripts/item_randomizer/pool_2
execute if score round ic_gamedata matches 11..14 if score .pool_perc ic_gamedata matches 6..15 run function item_call:game/scripts/item_randomizer/pool_3
execute if score round ic_gamedata matches 11..14 if score .pool_perc ic_gamedata matches 16..40 run function item_call:game/scripts/item_randomizer/pool_4
execute if score round ic_gamedata matches 11..14 if score .pool_perc ic_gamedata matches 41..97 run function item_call:game/scripts/item_randomizer/pool_5
execute if score round ic_gamedata matches 11..14 if score .pool_perc ic_gamedata matches 98..100 run function item_call:game/scripts/item_randomizer/pool_6
# round 15 - 20
execute if score round ic_gamedata matches 15..19 if score .pool_perc ic_gamedata matches 1..15 run function item_call:game/scripts/item_randomizer/pool_3
execute if score round ic_gamedata matches 15..19 if score .pool_perc ic_gamedata matches 16..40 run function item_call:game/scripts/item_randomizer/pool_4
execute if score round ic_gamedata matches 15..19 if score .pool_perc ic_gamedata matches 41..97 run function item_call:game/scripts/item_randomizer/pool_5
execute if score round ic_gamedata matches 15..19 if score .pool_perc ic_gamedata matches 98..100 run function item_call:game/scripts/item_randomizer/pool_6
# round 20+
execute if score round ic_gamedata matches 20.. if score .pool_perc ic_gamedata matches 1..10 run function item_call:game/scripts/item_randomizer/pool_3
execute if score round ic_gamedata matches 20.. if score .pool_perc ic_gamedata matches 11..50 run function item_call:game/scripts/item_randomizer/pool_4
execute if score round ic_gamedata matches 20.. if score .pool_perc ic_gamedata matches 51..90 run function item_call:game/scripts/item_randomizer/pool_5
execute if score round ic_gamedata matches 20.. if score .pool_perc ic_gamedata matches 91..100 run function item_call:game/scripts/item_randomizer/pool_6
