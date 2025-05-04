summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick",count:1},Tags:["tombstone","item","processing"],Motion:[0.0d,0.35d,0.0d]}
data modify entity @n[tag=tombstone,tag=item,tag=processing] Item set from entity @s data.inventory[-1]
data remove entity @s data.inventory[-1]
data modify entity @n[tag=tombstone,tag=item,tag=processing] Tags set value []
execute if data entity @s data.inventory[-1].id run function akoimeexx:tombstones/exhume/spawn_item