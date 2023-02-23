execute if score @s ic_jointeam matches 1 run tellraw @s [{"text":"Select which team you'd like to be on:\n","color":"blue"},{"text":"(Press button in chat to select)\n","color":"dark_gray"},{"text":"[Player] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam set 11"}},{"text":"| ","color":"white"},{"text":"[Spectator]","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ic_jointeam set 12"}}]

execute if score @s ic_jointeam matches 11 if entity @s[tag=!ic_player] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1000 1
execute if score @s ic_jointeam matches 11 if entity @s[tag=!ic_player] run title @s actionbar [{"text":"You are now on the ","color":"aqua"},{"text":"PLAYER","color":"green","bold":true},{"text":" team","color":"aqua"}]
execute if score @s ic_jointeam matches 11 if entity @s[tag=ic_spectator] run tag @s remove ic_spectator
execute if score @s ic_jointeam matches 11 if entity @s[tag=!ic_player] run tag @s add ic_player

execute if score @s ic_jointeam matches 12 if entity @s[tag=!ic_spectator] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1000 1
execute if score @s ic_jointeam matches 12 if entity @s[tag=!ic_spectator] run title @s actionbar [{"text":"You are now on the ","color":"aqua"},{"text":"SPECTATOR","color":"gray","bold":true},{"text":" team","color":"aqua"}]
execute if score @s ic_jointeam matches 12 if entity @s[tag=ic_player] run tag @s remove ic_player
execute if score @s ic_jointeam matches 12 if entity @s[tag=!ic_spectator] run tag @s add ic_spectator

scoreboard players set @s ic_jointeam 0
