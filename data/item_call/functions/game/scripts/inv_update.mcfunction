execute if score .active ic_gamedata matches 1 if score .no_hoard ic_gamedata matches 1 unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:9b,tag:{blocker:1b}},{id:"minecraft:barrier",Slot:10b},{id:"minecraft:barrier",Count:1b,Slot:11b},{id:"minecraft:barrier",Count:1b,Slot:12b},{id:"minecraft:barrier",Count:1b,Slot:13b},{id:"minecraft:barrier",Count:1b,Slot:14b},{id:"minecraft:barrier",Count:1b,Slot:15b},{id:"minecraft:barrier",Count:1b,Slot:16b},{id:"minecraft:barrier",Count:1b,Slot:17b},{id:"minecraft:barrier",Count:1b,Slot:18b},{id:"minecraft:barrier",Count:1b,Slot:19b},{id:"minecraft:barrier",Count:1b,Slot:20b},{id:"minecraft:barrier",Count:1b,Slot:21b},{id:"minecraft:barrier",Count:1b,Slot:22b},{id:"minecraft:barrier",Count:1b,Slot:23b},{id:"minecraft:barrier",Count:1b,Slot:24b},{id:"minecraft:barrier",Count:1b,Slot:25b},{id:"minecraft:barrier",Count:1b,Slot:26b},{id:"minecraft:barrier",Count:1b,Slot:27b},{id:"minecraft:barrier",Count:1b,Slot:28b},{id:"minecraft:barrier",Count:1b,Slot:29b},{id:"minecraft:barrier",Count:1b,Slot:30b},{id:"minecraft:barrier",Count:1b,Slot:31b},{id:"minecraft:barrier",Count:1b,Slot:32b},{id:"minecraft:barrier",Count:1b,Slot:33b},{id:"minecraft:barrier",Count:1b,Slot:34b},{id:"minecraft:barrier",Count:1b,Slot:35b}]}] run tag @s add inv_clear
execute if entity @s[nbt={SelectedItem:{tag:{blocker:1b}}}] run item replace entity @s weapon.mainhand with air 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{blocker:1b}}]}] run item replace entity @s weapon.offhand with air 1
execute if entity @s[nbt={Inventory:[{Slot:0b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.0 with air 1
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.1 with air 1
execute if entity @s[nbt={Inventory:[{Slot:2b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.2 with air 1
execute if entity @s[nbt={Inventory:[{Slot:3b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.3 with air 1
execute if entity @s[nbt={Inventory:[{Slot:4b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.4 with air 1
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.5 with air 1
execute if entity @s[nbt={Inventory:[{Slot:6b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.6 with air 1
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.7 with air 1
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{blocker:1b}}]}] run item replace entity @s hotbar.8 with air 1
execute as @a[tag=inv_clear] run function item_call:game/scripts/inv_clear
tag @s remove inv_clear
advancement revoke @s only item_call:inv_update