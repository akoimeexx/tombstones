# Remove vault highlight
execute as @e[type=minecraft:block_display,tag=tombstone,sort=nearest,limit=3,distance=..2] run data remove entity @s brightness
execute as @e[type=minecraft:item_display,tag=tombstone,sort=nearest,limit=1,distance=..2] run data remove entity @s brightness
execute as @e[type=minecraft:block_display,tag=tombstone,sort=nearest,limit=3,distance=..2] run data remove entity @s Glowing
execute as @e[type=minecraft:item_display,tag=tombstone,sort=nearest,limit=1,distance=..2] run data remove entity @s Glowing
