execute as @s at @s if data entity @s data.inventory[-1].id run function akoimeexx:tombstones/exhume/spawn_item
execute as @s at @s if data entity @s data.experience[-1] run function akoimeexx:tombstones/exhume/spawn_experience

execute as @s at @s run kill @e[tag=tombstone,tag=soil,sort=nearest,limit=2]
execute as @s at @s run kill @n[tag=tombstone,tag=headstone]
execute as @s at @s run kill @n[tag=tombstone,tag=skull]
kill @s