execute if score .active ic_gamedata matches 0 as @a[tag=ic_op,scores={ic_menu=1..}] run function item_call:menu/directory
execute if score .active ic_gamedata matches 0 as @a[scores={ic_jointeam=1..}] run function item_call:menu/teamsel 
execute if score .active ic_gamedata matches 0 as @a run scoreboard players enable @a ic_jointeam
execute if score .active ic_gamedata matches 0 as @a[tag=ic_op] run scoreboard players enable @a ic_menu