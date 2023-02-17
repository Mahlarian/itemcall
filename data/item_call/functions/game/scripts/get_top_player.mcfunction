scoreboard players set .max ic_gamedata -32
execute as @a[tag=!top_player] run scoreboard players operation .max ic_gamedata > @s ic_points
execute as @a if score @s ic_points = .max ic_gamedata run tag @s add top_player