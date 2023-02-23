scoreboard players add .rank ic_gamedata 1
scoreboard players set .max ic_gamedata -32
execute as @a[tag=!ranked] run scoreboard players operation .max ic_gamedata > @s ic_points
execute as @a if score @s ic_points = .max ic_gamedata run tag @s add ranked
execute as @a if score .rank ic_gamedata matches 1 if score @s ic_points = .max ic_gamedata run tag @s add 1st
execute as @a if score .rank ic_gamedata matches 2 if score @s ic_points = .max ic_gamedata run tag @s add 2nd
execute as @a if score .rank ic_gamedata matches 3 if score @s ic_points = .max ic_gamedata run tag @s add 3rd
execute if score .rank ic_gamedata matches ..2 run function item_call:game/scripts/rank_player_test
