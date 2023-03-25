schedule function item_call:game/scripts/sp_end_game 1t
scoreboard players add .end ic_timers 1

execute if score .end ic_timers matches 1 run effect give @a[tag=ic_player] resistance 25 5 true
execute if score .end ic_timers matches 1 run bossbar set item_call:status visible false
execute if score .end ic_timers matches 1..20 run schedule clear item_call:game/scripts/start_round
execute if score .end ic_timers matches 1 run schedule clear item_call:game/scripts/item_check
execute if score .end ic_timers matches 1 run schedule clear item_call:game/scripts/end_round
execute if score .end ic_timers matches 1 run function item_call:game/scripts/rank_placements
execute if score .end ic_timers matches 20 run tellraw @a {"text":"The game has ended!","color":"aqua"}
execute if score .end ic_timers matches 20 run playsound entity.player.levelup master @a ~ ~ ~ 1000 0.5

execute if score .end ic_timers matches 30 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;244991],FadeColors:[I;16776960]}]}}}}
execute if score .end ic_timers matches 42 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4850687],FadeColors:[I;16777215]}]}}}}
execute if score .end ic_timers matches 42 run title @a title {"text":"Congratulations!","color":"aqua"}
execute if score .end ic_timers matches 42 run title @a subtitle {"text":"Game resetting shortly","color":"light_purple"}
execute if score .end ic_timers matches 42 run title @a times 0 150 0
execute if score .end ic_timers matches 54 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3145487],FadeColors:[I;16769541]}]}}}}
execute if score .end ic_timers matches 66 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16719880],FadeColors:[I;1020927]}]}}}}
execute if score .end ic_timers matches 78 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11731967],FadeColors:[I;16711816]}]}}}}
execute if score .end ic_timers matches 90 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;244991],FadeColors:[I;16776960]}]}}}}
execute if score .end ic_timers matches 102 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4850687],FadeColors:[I;16777215]}]}}}}
execute if score .end ic_timers matches 114 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3145487],FadeColors:[I;16769541]}]}}}}
execute if score .end ic_timers matches 126 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16719880],FadeColors:[I;1020927]}]}}}}
execute if score .end ic_timers matches 138 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11731967],FadeColors:[I;16711816]}]}}}}
execute if score .end ic_timers matches 150 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;244991],FadeColors:[I;16776960]}]}}}}
execute if score .end ic_timers matches 162 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4850687],FadeColors:[I;16777215]}]}}}}
execute if score .end ic_timers matches 174 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3145487],FadeColors:[I;16769541]}]}}}}
execute if score .end ic_timers matches 186 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16719880],FadeColors:[I;1020927]}]}}}}
execute if score .end ic_timers matches 198 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11731967],FadeColors:[I;16711816]}]}}}}
execute if score .end ic_timers matches 199 run schedule function item_call:game/scripts/reset 1s
execute if score .end ic_timers matches 200 run schedule clear item_call:game/scripts/sp_end_game
execute if score .end ic_timers matches 200 run scoreboard players set .end ic_timers 0