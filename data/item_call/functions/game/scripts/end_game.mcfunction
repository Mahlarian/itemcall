schedule function item_call:game/scripts/end_game 1t
scoreboard players add .end ic_timers 1

execute if score .end ic_timers matches 1 run effect give @a[tag=ic_player] resistance 25 5 true
execute if score .end ic_timers matches 1 run bossbar set item_call:status visible false
execute if score .end ic_timers matches 1..20 run schedule clear item_call:game/scripts/start_round
execute if score .end ic_timers matches 1 run schedule clear item_call:game/scripts/item_check
execute if score .end ic_timers matches 1 run schedule clear item_call:game/scripts/end_round
execute if score .end ic_timers matches 1 run function item_call:game/scripts/rank_placements
execute if score .end ic_timers matches 20 run title @a title {"text":"The game has ended!","color":"aqua"}
execute if score .end ic_timers matches 20 run title @a subtitle {"text":"and now... for the results","color":"light_purple"}
execute if score .end ic_timers matches 30..140 run playsound block.note_block.snare master @a ~ ~ ~ 1000 0.7
execute if score .end ic_timers matches 30 as @a run function item_call:menu/clear
execute if score .end ic_timers matches 90 as @a run function item_call:menu/clear
execute if score .end ic_timers matches 90 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000 1
execute if score .end ic_timers matches 90 run tellraw @a [{"text":"----------------\n","color":"gray"},{"text":"3rd: ","color":"#BA7002"},{"selector":"@a[tag=3rd]","separator":", ","color":"gold"},{"text":" - ","color":"gold"},{"score":{"name":"@r[tag=3rd]","objective":"ic_points"},"color":"gold"},{"text":"\n----------------","color":"gray"}]
execute if score .end ic_timers matches 110 as @a run function item_call:menu/clear
execute if score .end ic_timers matches 110 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000 1.2
execute if score .end ic_timers matches 110 run tellraw @a [{"text":"----------------\n","color":"gray"},{"text":"2nd: ","color":"white"},{"selector":"@a[tag=2nd]","separator":", ","color":"white"},{"text":" - ","color":"white"},{"score":{"name":"@r[tag=2nd]","objective":"ic_points"},"color":"white"},{"text":"\n3rd: ","color":"#BA7002"},{"selector":"@a[tag=3rd]","separator":", ","color":"gold"},{"text":" - ","color":"gold"},{"score":{"name":"@r[tag=3rd]","objective":"ic_points"},"color":"gold"},{"text":"\n----------------","color":"gray"}]
execute if score .end ic_timers matches 130 as @a run function item_call:menu/clear
execute if score .end ic_timers matches 130 run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000 1.6
execute if score .end ic_timers matches 130 run tellraw @a [{"text":"----------------\n","color":"gray"},{"text":"1st: ","color":"#F7FF1C"},{"selector":"@a[tag=1st]","separator":", ","color":"aqua"},{"text":" - ","color":"aqua"},{"score":{"name":"@r[tag=1st]","objective":"ic_points"},"color":"aqua"},{"text":"\n2nd: ","color":"white"},{"selector":"@a[tag=2nd]","separator":", ","color":"white"},{"text":" - ","color":"white"},{"score":{"name":"@r[tag=2nd]","objective":"ic_points"},"color":"white"},{"text":"\n3rd: ","color":"#BA7002"},{"selector":"@a[tag=3rd]","separator":", ","color":"gold"},{"text":" - ","color":"gold"},{"score":{"name":"@r[tag=3rd]","objective":"ic_points"},"color":"gold"},{"text":"\n----------------","color":"gray"}]

execute if score .end ic_timers matches 140 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;244991],FadeColors:[I;16776960]}]}}}}
execute if score .end ic_timers matches 152 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4850687],FadeColors:[I;16777215]}]}}}}
execute if score .end ic_timers matches 152 run title @a title {"text":"Congratulations!","color":"aqua"}
execute if score .end ic_timers matches 152 run title @a subtitle {"text":"Game resetting shortly","color":"light_purple"}
execute if score .end ic_timers matches 152 run title @a times 0 150 0
execute if score .end ic_timers matches 164 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3145487],FadeColors:[I;16769541]}]}}}}
execute if score .end ic_timers matches 176 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16719880],FadeColors:[I;1020927]}]}}}}
execute if score .end ic_timers matches 188 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11731967],FadeColors:[I;16711816]}]}}}}
execute if score .end ic_timers matches 200 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;244991],FadeColors:[I;16776960]}]}}}}
execute if score .end ic_timers matches 212 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4850687],FadeColors:[I;16777215]}]}}}}
execute if score .end ic_timers matches 224 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3145487],FadeColors:[I;16769541]}]}}}}
execute if score .end ic_timers matches 236 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16719880],FadeColors:[I;1020927]}]}}}}
execute if score .end ic_timers matches 248 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11731967],FadeColors:[I;16711816]}]}}}}
execute if score .end ic_timers matches 260 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;244991],FadeColors:[I;16776960]}]}}}}
execute if score .end ic_timers matches 272 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4850687],FadeColors:[I;16777215]}]}}}}
execute if score .end ic_timers matches 284 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;3145487],FadeColors:[I;16769541]}]}}}}
execute if score .end ic_timers matches 296 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16719880],FadeColors:[I;1020927]}]}}}}
execute if score .end ic_timers matches 308 as @a at @s run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11731967],FadeColors:[I;16711816]}]}}}}
execute if score .end ic_timers matches 309 run schedule function item_call:game/scripts/reset 1s
execute if score .end ic_timers matches 310 run schedule clear item_call:game/scripts/end_game
execute if score .end ic_timers matches 310 run scoreboard players set .end ic_timers 0