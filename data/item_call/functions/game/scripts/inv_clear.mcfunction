clear @s barrier{blocker:1b}
item replace entity @s inventory.0 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.1 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.2 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.3 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.4 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.5 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.6 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.7 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.8 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.9 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.10 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.11 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.12 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.13 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.14 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.15 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.16 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.17 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.18 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.19 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.20 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.21 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.22 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.23 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.24 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.25 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
item replace entity @s inventory.26 with barrier{display:{Name:'{"text":"Slot locked","color":"red"}'},blocker:1b} 1
playsound block.note_block.bass master @s ~ ~ ~ 1000 0.5
execute at @s run kill @e[distance=..10,type=item,nbt={Item:{tag:{blocker:1b}}}]