# Display
execute if score @s ic_menu matches 1 run function item_call:menu/menu_display

# Win condition
execute if score @s ic_menu matches 11 run function item_call:menu/output/11
execute if score @s ic_menu matches 12 run function item_call:menu/output/12

# Amount for win condition (points/rounds)
execute if score @s ic_menu matches 21 run function item_call:menu/output/21
execute if score @s ic_menu matches 22 run function item_call:menu/output/22
execute if score @s ic_menu matches 23 run function item_call:menu/output/23
execute if score @s ic_menu matches 24 run function item_call:menu/output/24
execute if score @s ic_menu matches 25 run function item_call:menu/output/25
execute if score @s ic_menu matches 26 run function item_call:menu/output/26

# Show points
execute if score @s ic_menu matches 31 run function item_call:menu/output/31
execute if score @s ic_menu matches 32 run function item_call:menu/output/32

# Random spawn
execute if score @s ic_menu matches 41 run function item_call:menu/output/41
execute if score @s ic_menu matches 42 run function item_call:menu/output/42

# Spread players
execute if score @s ic_menu matches 51 run function item_call:menu/output/51
execute if score @s ic_menu matches 52 run function item_call:menu/output/52

# Skip voting type
execute if score @s ic_menu matches 61 run function item_call:menu/output/61
execute if score @s ic_menu matches 62 run function item_call:menu/output/62

execute if score @s ic_menu matches 991 run function item_call:menu/start_game
execute if score @s ic_menu matches 992 if score .start ic_timers matches 1..190 run function item_call:menu/cancel_game
execute if score @s ic_menu matches 998 run function item_call:menu/easter_egg

scoreboard players set @s ic_menu 0